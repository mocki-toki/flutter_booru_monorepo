import 'dart:io';

import 'package:meta/meta.dart';
import 'package:pansy_sdk/src/session/managed_account_session.dart';
import 'package:pansy_sdk/src/session/managed_scope_session.dart';
import 'package:pansy_sdk_protocols/pansy_sdk_protocols.dart' hide AccountSession, ScopeSession;
import 'package:path_provider/path_provider.dart';

class SessionManager {
  SessionManager(this._sessionService);

  final SessionServiceClient _sessionService;

  List<SessionData> _loadedSessions = const [];
  List<ManagedAccountSession> _accountSessions = const [];
  List<ManagedScopeSession> _scopeSessions = const [];

  Iterable<ManagedAccountSession> get accountSessions => _accountSessions;

  Iterable<ManagedScopeSession> get scopeSessions => _scopeSessions;

  Future<void> load() async {
    final dataFile = await _getDataFile();
    final serializedData = await dataFile.readAsBytes();

    final managerData = SessionManagerData.fromBuffer(serializedData);
    _loadedSessions = managerData.sessions;

    for (var sessionData in _loadedSessions) {
      switch (sessionData.type) {
        case SessionType.SESSION_TYPE_ACCOUNT:
          _accountSessions.add(
            ManagedAccountSession(
              this,
              _sessionService,
              sessionData.sessionId,
              sessionData.refreshToken,
              sessionData.encryptionKey,
              sessionData.metadata,
            ),
          );
          break;
        case SessionType.SESSION_TYPE_SCOPE:
          _scopeSessions.add(
            ManagedScopeSession(
              this,
              _sessionService,
              sessionData.sessionId,
              sessionData.refreshToken,
              sessionData.encryptionKey,
              sessionData.metadata,
            ),
          );
          break;
        default:
          // TODO: Handle this case.
          throw Exception('Unknown session type: ${sessionData.type}');
      }
    }
  }

  @internal
  Future<void> persist(SessionData data) async {
    var found = false;

    for (var i = 0; i < _loadedSessions.length; i++) {
      if (_loadedSessions[i].sessionId == data.sessionId) {
        _loadedSessions[i] = data;
        found = true;
        break;
      }
    }

    if (!found) {
      _loadedSessions.add(data);
    }

    await _save();
  }

  Future<void> _save() async {
    final dataFile = await _getDataFile();
    final managerData = SessionManagerData(sessions: _loadedSessions);
    final serializedData = managerData.writeToBuffer();

    await dataFile.writeAsBytes(serializedData);
  }

  Future<File> _getDataFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File(directory.path + '/session_data');
  }
}
