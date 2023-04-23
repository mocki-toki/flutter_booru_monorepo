import 'package:pansy_sdk/src/session/managed_session_base.dart';
import 'package:pansy_sdk_protocols/pansy_sdk_protocols.dart';

class ManagedAccountSession extends ManagedSessionBase<AccountAccessToken> {
  ManagedAccountSession(
    super.sessionManager,
    super.sessionService,
    super.sessionId,
    super.refreshToken,
    super.encryptionKey,
    super.metadata,
  );

  @override
  SessionType get sessionType => SessionType.SESSION_TYPE_ACCOUNT;

  @override
  Future<TokenPair<AccountAccessToken>> refreshCore(
    String sessionId,
    List<int> refreshToken,
  ) async {
    final result = await sessionService.refreshAccountSession(
      RefreshSessionRequest(
        sessionId: sessionId,
        refreshToken: refreshToken,
      ),
    );

    return TokenPair(result.accessToken, result.refreshToken);
  }
}
