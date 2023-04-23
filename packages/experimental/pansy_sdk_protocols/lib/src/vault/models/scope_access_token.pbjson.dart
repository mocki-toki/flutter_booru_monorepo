///
//  Generated code. Do not modify.
//  source: vault/models/scope_access_token.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use scopeAccessTokenDescriptor instead')
const ScopeAccessToken$json = const {
  '1': 'ScopeAccessToken',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.ScopeAccessToken.Payload', '10': 'payload'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
  '3': const [ScopeAccessToken_Payload$json],
};

@$core.Deprecated('Use scopeAccessTokenDescriptor instead')
const ScopeAccessToken_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'scope_id', '3': 2, '4': 1, '5': 9, '10': 'scopeId'},
    const {'1': 'can_write', '3': 3, '4': 1, '5': 8, '10': 'canWrite'},
    const {'1': 'expires_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiresAt'},
  ],
};

/// Descriptor for `ScopeAccessToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scopeAccessTokenDescriptor = $convert.base64Decode('ChBTY29wZUFjY2Vzc1Rva2VuEj8KB3BheWxvYWQYASABKAsyJS5wYW5zeS52YXVsdC5TY29wZUFjY2Vzc1Rva2VuLlBheWxvYWRSB3BheWxvYWQSHAoJc2lnbmF0dXJlGAIgASgMUglzaWduYXR1cmUamwEKB1BheWxvYWQSHQoKc2Vzc2lvbl9pZBgBIAEoCVIJc2Vzc2lvbklkEhkKCHNjb3BlX2lkGAIgASgJUgdzY29wZUlkEhsKCWNhbl93cml0ZRgDIAEoCFIIY2FuV3JpdGUSOQoKZXhwaXJlc19hdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWV4cGlyZXNBdA==');
