import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';
import 'package:pansy_sdk/src/session/session_manager.dart';
import 'package:pansy_sdk_protocols/pansy_sdk_protocols.dart';

abstract class ManagedSessionBase<TAccessToken> {
  ManagedSessionBase(
    this._sessionManager,
    this.sessionService,
    this._sessionId,
    this._refreshToken,
    this._encryptionKey,
    this._metadata,
  );

  final SessionServiceClient sessionService;
  final SessionManager _sessionManager;

  String _sessionId;
  TAccessToken? _accessToken;
  List<int> _refreshToken;
  List<int> _encryptionKey;
  Map<String, Any> _metadata;

  List<int> get encryptionKey => _encryptionKey;

  SessionType get sessionType;

  Future<TokenPair<TAccessToken>> refreshCore(
    String sessionId,
    List<int> refreshToken,
  );

  Future<bool> refresh() async {
    try {
      final tokenPair = await refreshCore(_sessionId, _refreshToken);

      await _sessionManager.persist(
        SessionData(
          sessionId: _sessionId,
          type: sessionType,
          refreshToken: tokenPair.refreshToken,
          encryptionKey: _encryptionKey,
        ),
      );

      _accessToken = tokenPair.accessToken;
      return true;
    } on GrpcError catch (error) {
      if (error.code == StatusCode.unauthenticated) {
        return false;
      }

      rethrow;
    }
  }

  Future<T> makeAuthenticatedRequest<T>(
    Future<T> Function(TAccessToken token) handler,
  ) async {
    final accessToken = _accessToken;

    if (accessToken == null) {
      // TODO custom errors
      throw Exception('Session is not authenticated');
    }

    try {
      return await handler(accessToken);
    } on GrpcError catch (error) {
      if (error.code == StatusCode.unauthenticated) {
        final success = await refresh();

        if (!success) {
          throw Exception('Session expired and cannot be refreshed');
        }

        return await handler(_accessToken!);
      }

      rethrow;
    }
  }

  Future<ResponseStream<T>> makeAuthenticatedStreamRequest<T>(
    ResponseStream<T> Function(TAccessToken token) handler,
  ) async {
    final accessToken = _accessToken;

    if (accessToken == null) {
      // TODO custom errors
      throw Exception('Session is not authenticated');
    }

    try {
      return handler(accessToken);
    } on GrpcError catch (error) {
      if (error.code == StatusCode.unauthenticated) {
        final success = await refresh();

        if (!success) {
          throw Exception('Session expired and cannot be refreshed');
        }

        return handler(accessToken);
      }

      rethrow;
    }
  }

  T getMetadata<T extends GeneratedMessage>(T message) {
    final metadata = _metadata[message.info_.qualifiedMessageName];

    if (metadata == null) {
      return message;
    }

    return metadata.unpackInto(message);
  }

  Future<void> setMetadata<T extends GeneratedMessage>(T message) async {
    _metadata[message.info_.qualifiedMessageName] = Any.pack(message, typeUrlPrefix: 'pansy.sdk');

    await _sessionManager.persist(
      SessionData(
        sessionId: _sessionId,
        type: sessionType,
        refreshToken: _refreshToken,
        encryptionKey: _encryptionKey,
        metadata: _metadata,
      ),
    );
  }
}

class TokenPair<TAccessToken> {
  TokenPair(this.accessToken, this.refreshToken);

  final TAccessToken accessToken;
  final List<int> refreshToken;
}
