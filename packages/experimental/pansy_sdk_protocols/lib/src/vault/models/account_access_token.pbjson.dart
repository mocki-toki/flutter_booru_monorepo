///
//  Generated code. Do not modify.
//  source: vault/models/account_access_token.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountAccessTokenDescriptor instead')
const AccountAccessToken$json = const {
  '1': 'AccountAccessToken',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.AccountAccessToken.Payload', '10': 'payload'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
  '3': const [AccountAccessToken_Payload$json],
};

@$core.Deprecated('Use accountAccessTokenDescriptor instead')
const AccountAccessToken_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'expires_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiresAt'},
  ],
};

/// Descriptor for `AccountAccessToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAccessTokenDescriptor = $convert.base64Decode('ChJBY2NvdW50QWNjZXNzVG9rZW4SQQoHcGF5bG9hZBgBIAEoCzInLnBhbnN5LnZhdWx0LkFjY291bnRBY2Nlc3NUb2tlbi5QYXlsb2FkUgdwYXlsb2FkEhwKCXNpZ25hdHVyZRgCIAEoDFIJc2lnbmF0dXJlGoIBCgdQYXlsb2FkEh0KCnNlc3Npb25faWQYASABKAlSCXNlc3Npb25JZBIdCgphY2NvdW50X2lkGAIgASgJUglhY2NvdW50SWQSOQoKZXhwaXJlc19hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWV4cGlyZXNBdA==');
