import 'package:pansy_sdk/src/session/managed_session_base.dart';
import 'package:pansy_sdk_protocols/pansy_sdk_protocols.dart';

class ManagedScopeSession extends ManagedSessionBase<ScopeAccessToken> {
  ManagedScopeSession(
    super.sessionManager,
    super.sessionService,
    super.sessionId,
    super.refreshToken,
    super.encryptionKey,
    super.metadata,
  );

  @override
  SessionType get sessionType => SessionType.SESSION_TYPE_SCOPE;

  @override
  Future<TokenPair<ScopeAccessToken>> refreshCore(
    String sessionId,
    List<int> refreshToken,
  ) async {
    final result = await sessionService.refreshScopeSession(
      RefreshSessionRequest(
        sessionId: sessionId,
        refreshToken: refreshToken,
      ),
    );

    return TokenPair(result.accessToken, result.refreshToken);
  }
}
