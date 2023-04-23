///
//  Generated code. Do not modify.
//  source: vault/services/scope_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createScopeResponseDescriptor instead')
const CreateScopeResponse$json = const {
  '1': 'CreateScopeResponse',
  '2': const [
    const {'1': 'scope_id', '3': 1, '4': 1, '5': 9, '10': 'scopeId'},
  ],
};

/// Descriptor for `CreateScopeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createScopeResponseDescriptor = $convert.base64Decode('ChNDcmVhdGVTY29wZVJlc3BvbnNlEhkKCHNjb3BlX2lkGAEgASgJUgdzY29wZUlk');
@$core.Deprecated('Use createScopeSessionRequestDescriptor instead')
const CreateScopeSessionRequest$json = const {
  '1': 'CreateScopeSessionRequest',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.AccountAccessToken', '10': 'accessToken'},
    const {'1': 'scope_id', '3': 2, '4': 1, '5': 9, '10': 'scopeId'},
    const {'1': 'can_write', '3': 3, '4': 1, '5': 8, '10': 'canWrite'},
  ],
};

/// Descriptor for `CreateScopeSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createScopeSessionRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVTY29wZVNlc3Npb25SZXF1ZXN0EkIKDGFjY2Vzc190b2tlbhgBIAEoCzIfLnBhbnN5LnZhdWx0LkFjY291bnRBY2Nlc3NUb2tlblILYWNjZXNzVG9rZW4SGQoIc2NvcGVfaWQYAiABKAlSB3Njb3BlSWQSGwoJY2FuX3dyaXRlGAMgASgIUghjYW5Xcml0ZQ==');
@$core.Deprecated('Use createScopeSessionResponseDescriptor instead')
const CreateScopeSessionResponse$json = const {
  '1': 'CreateScopeSessionResponse',
  '2': const [
    const {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 12, '10': 'refreshToken'},
  ],
};

/// Descriptor for `CreateScopeSessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createScopeSessionResponseDescriptor = $convert.base64Decode('ChpDcmVhdGVTY29wZVNlc3Npb25SZXNwb25zZRIdCgpzZXNzaW9uX2lkGAEgASgJUglzZXNzaW9uSWQSIwoNcmVmcmVzaF90b2tlbhgCIAEoDFIMcmVmcmVzaFRva2Vu');
