import 'package:pansy_sdk/src/crypto_service.dart';
import 'package:pansy_sdk/src/session/managed_scope_session.dart';
import 'package:pansy_sdk_protocols/pansy_sdk_protocols.dart';
import 'package:protobuf/protobuf.dart';
import 'package:grpc/grpc.dart';

class ManagedDataService {
  ManagedDataService(this.session, this._dataService);

  final ManagedScopeSession session;
  final DataServiceClient _dataService;
  final CryptoService _cryptoService = CryptoService();

  Future<void> init() async {
    await _cryptoService.init(session.encryptionKey);
  }

  Future<List<List<int>>> readMany(Iterable<String> boxIds) async {
    final response = await session.makeAuthenticatedRequest(
      (token) => _dataService.read(
        ReadRequest(
          accessToken: token,
          boxIds: boxIds,
        ),
      ),
    );

    return await Future.wait(
      response.content.map((e) => _cryptoService.decryptBoxContent(e)),
    );
  }

  Future<List<int>> read(String boxId) async {
    final content = await readMany([boxId]);
    return content.first;
  }

  Future<List<GeneratedMessage>> readMessages(
    Iterable<String> boxIds,
    List<GeneratedMessage> messages,
  ) async {
    final content = await readMany(boxIds);

    for (var i = 0; i < content.length; i++) {
      messages[i].mergeFromBuffer(content[i]);
    }

    return messages;
  }

  Future<T> readMessage<T extends GeneratedMessage>(
    String boxId,
    T message,
  ) async {
    final content = await read(boxId);
    message.mergeFromBuffer(content);
    return message;
  }

  Future<List<T>> readTypedMessages<T extends GeneratedMessage>(
    Iterable<String> boxIds,
    T Function() messageFactory,
  ) async {
    final content = await readMany(boxIds);
    return content.map((e) => messageFactory()..mergeFromBuffer(e)).toList();
  }

  Future<void> writeMany(Iterable<BoxUpdate> updates, {bool sync = false}) async {
    final encryptedUpdates = await Future.wait(updates.map(
      (e) async => BoxUpdate(
        boxId: e.boxId,
        content: await _cryptoService.encryptBoxContent(e.content),
      ),
    ));

    await session.makeAuthenticatedRequest(
      (token) => _dataService.write(
        WriteRequest(
          accessToken: token,
          updates: encryptedUpdates,
          sync: sync,
        ),
      ),
    );
  }

  Future<void> write(String boxId, List<int> content, {bool sync = false}) {
    return writeMany([BoxUpdate(boxId: boxId, content: content)], sync: sync);
  }

  Future<void> writeMessages(Iterable<MessageBoxUpdate> updates, {bool sync = false}) {
    final serializedUpdates = updates.map(
      (e) => BoxUpdate(
        boxId: e.boxId,
        content: e.message.writeToBuffer(),
      ),
    );

    return writeMany(serializedUpdates, sync: sync);
  }

  Future<void> writeMessage(String boxId, GeneratedMessage message, {bool sync = false}) {
    return writeMessages([MessageBoxUpdate(boxId: boxId, message: message)], sync: sync);
  }

  Future<T> transaction<T>(Future<T> Function() transaction) async {
    await session.makeAuthenticatedRequest(
      (token) => _dataService.beginTransaction(
        ScopeAccessTokenRequest(accessToken: token),
      ),
    );

    try {
      final result = await transaction();

      await session.makeAuthenticatedRequest(
        (token) => _dataService.commitTransaction(
          ScopeAccessTokenRequest(accessToken: token),
        ),
      );

      return result;
    } on Error {
      await session.makeAuthenticatedRequest(
        (token) => _dataService.rollbackTransaction(
          ScopeAccessTokenRequest(accessToken: token),
        ),
      );

      rethrow;
    }
  }

  Future<ManagedUpdateStream> getBoxUpdateStream() async {
    final stream = await session.makeAuthenticatedStreamRequest(
      (token) => _dataService.getBoxUpdateStream(
        ScopeAccessTokenRequest(accessToken: token),
      ),
    );

    return ManagedUpdateStream(stream, _decryptStream(stream));
  }

  Stream<BoxUpdate> _decryptStream(Stream<BoxUpdate> stream) async* {
    await for (final update in stream) {
      yield BoxUpdate(
        boxId: update.boxId,
        content: await _cryptoService.decryptBoxContent(update.content),
      );
    }
  }
}

class MessageBoxUpdate {
  MessageBoxUpdate({
    required this.boxId,
    required this.message,
  });

  final String boxId;
  final GeneratedMessage message;
}

class ManagedUpdateStream {
  ManagedUpdateStream(this._stream, this._decryptedStream);

  final ResponseStream<BoxUpdate> _stream;
  final Stream<BoxUpdate> _decryptedStream;

  Stream<BoxUpdate> get stream => _decryptedStream;

  Future<void> cancel() async {
    await _stream.cancel();
  }
}
