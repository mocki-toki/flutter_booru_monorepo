import 'package:pansy_sdk/src/session/managed_account_session.dart';
import 'package:pansy_sdk_protocols/pansy_sdk_protocols.dart';

class ManagedScopeService {
  ManagedScopeService(this._session, this._scopeService);

  final ManagedAccountSession _session;
  final ScopeServiceClient _scopeService;

  Future<CreateScopeResponse> createScope() {
    return _session.makeAuthenticatedRequest(
      (token) => _scopeService.createScope(
        AccountAccessTokenRequest(accessToken: token),
      ),
    );
  }

  Future<CreateScopeSessionResponse> createScopeSession({
    required String scopeId,
    required bool canWrite,
  }) {
    return _session.makeAuthenticatedRequest(
      (token) => _scopeService.createScopeSession(
        CreateScopeSessionRequest(
          accessToken: token,
          scopeId: scopeId,
          canWrite: canWrite,
        ),
      ),
    );
  }
}
