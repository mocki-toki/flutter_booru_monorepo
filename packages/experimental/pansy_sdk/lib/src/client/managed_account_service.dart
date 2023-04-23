import 'package:pansy_sdk/src/session/managed_account_session.dart';
import 'package:pansy_sdk_protocols/pansy_sdk_protocols.dart';

class ManagedAccountService {
  ManagedAccountService(this._session, this._accountService);

  final ManagedAccountSession _session;
  final AccountServiceClient _accountService;

  Future<GetIndexDataResponse> getIndexData() {
    return _session.makeAuthenticatedRequest(
      (token) => _accountService.getIndexData(
        AccountAccessTokenRequest(accessToken: token),
      ),
    );
  }

  Future<void> setIndexData({
    required List<int> data,
    required List<int> concurrencyStamp,
  }) async {
    await _session.makeAuthenticatedRequest(
      (token) => _accountService.setIndexData(
        SetIndexDataRequest(
          accessToken: token,
          indexData: data,
          concurrencyStamp: concurrencyStamp,
        ),
      ),
    );
  }
}
