///
//  Generated code. Do not modify.
//  source: vault/services/session_management_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getSessionsRequestDescriptor instead')
const GetSessionsRequest$json = const {
  '1': 'GetSessionsRequest',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.AccountAccessToken', '10': 'accessToken'},
  ],
};

/// Descriptor for `GetSessionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionsRequestDescriptor = $convert.base64Decode('ChJHZXRTZXNzaW9uc1JlcXVlc3QSQgoMYWNjZXNzX3Rva2VuGAEgASgLMh8ucGFuc3kudmF1bHQuQWNjb3VudEFjY2Vzc1Rva2VuUgthY2Nlc3NUb2tlbg==');
@$core.Deprecated('Use getSessionsResponseDescriptor instead')
const GetSessionsResponse$json = const {
  '1': 'GetSessionsResponse',
  '2': const [
    const {'1': 'account_sessions', '3': 1, '4': 3, '5': 11, '6': '.pansy.vault.AccountSession', '10': 'accountSessions'},
    const {'1': 'scope_sessions', '3': 2, '4': 3, '5': 11, '6': '.pansy.vault.ScopeSession', '10': 'scopeSessions'},
  ],
};

/// Descriptor for `GetSessionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSessionsResponseDescriptor = $convert.base64Decode('ChNHZXRTZXNzaW9uc1Jlc3BvbnNlEkYKEGFjY291bnRfc2Vzc2lvbnMYASADKAsyGy5wYW5zeS52YXVsdC5BY2NvdW50U2Vzc2lvblIPYWNjb3VudFNlc3Npb25zEkAKDnNjb3BlX3Nlc3Npb25zGAIgAygLMhkucGFuc3kudmF1bHQuU2NvcGVTZXNzaW9uUg1zY29wZVNlc3Npb25z');
@$core.Deprecated('Use revokeSessionRequestDescriptor instead')
const RevokeSessionRequest$json = const {
  '1': 'RevokeSessionRequest',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.AccountAccessToken', '10': 'accessToken'},
    const {'1': 'session_id', '3': 2, '4': 1, '5': 9, '10': 'sessionId'},
  ],
};

/// Descriptor for `RevokeSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeSessionRequestDescriptor = $convert.base64Decode('ChRSZXZva2VTZXNzaW9uUmVxdWVzdBJCCgxhY2Nlc3NfdG9rZW4YASABKAsyHy5wYW5zeS52YXVsdC5BY2NvdW50QWNjZXNzVG9rZW5SC2FjY2Vzc1Rva2VuEh0KCnNlc3Npb25faWQYAiABKAlSCXNlc3Npb25JZA==');
