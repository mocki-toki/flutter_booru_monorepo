///
//  Generated code. Do not modify.
//  source: vault/services/session_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use refreshSessionRequestDescriptor instead')
const RefreshSessionRequest$json = const {
  '1': 'RefreshSessionRequest',
  '2': const [
    const {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 12, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshSessionRequestDescriptor = $convert.base64Decode('ChVSZWZyZXNoU2Vzc2lvblJlcXVlc3QSHQoKc2Vzc2lvbl9pZBgBIAEoCVIJc2Vzc2lvbklkEiMKDXJlZnJlc2hfdG9rZW4YAiABKAxSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use refreshAccountSessionResponseDescriptor instead')
const RefreshAccountSessionResponse$json = const {
  '1': 'RefreshAccountSessionResponse',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.AccountAccessToken', '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 12, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshAccountSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshAccountSessionResponseDescriptor = $convert.base64Decode('Ch1SZWZyZXNoQWNjb3VudFNlc3Npb25SZXNwb25zZRJCCgxhY2Nlc3NfdG9rZW4YASABKAsyHy5wYW5zeS52YXVsdC5BY2NvdW50QWNjZXNzVG9rZW5SC2FjY2Vzc1Rva2VuEiMKDXJlZnJlc2hfdG9rZW4YAiABKAxSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use refreshScopeSessionResponseDescriptor instead')
const RefreshScopeSessionResponse$json = const {
  '1': 'RefreshScopeSessionResponse',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.ScopeAccessToken', '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 12, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshScopeSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshScopeSessionResponseDescriptor = $convert.base64Decode('ChtSZWZyZXNoU2NvcGVTZXNzaW9uUmVzcG9uc2USQAoMYWNjZXNzX3Rva2VuGAEgASgLMh0ucGFuc3kudmF1bHQuU2NvcGVBY2Nlc3NUb2tlblILYWNjZXNzVG9rZW4SIwoNcmVmcmVzaF90b2tlbhgCIAEoDFIMcmVmcmVzaFRva2Vu');
