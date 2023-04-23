///
//  Generated code. Do not modify.
//  source: vault/models/authentication_token.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use authenticationTokenDescriptor instead')
const AuthenticationToken$json = const {
  '1': 'AuthenticationToken',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.AuthenticationToken.Payload', '10': 'payload'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
  '3': const [AuthenticationToken_Payload$json],
};

@$core.Deprecated('Use authenticationTokenDescriptor instead')
const AuthenticationToken_Payload$json = const {
  '1': 'Payload',
  '2': const [
    const {'1': 'requestId', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'target', '3': 2, '4': 1, '5': 9, '10': 'target'},
    const {'1': 'confirmation_code_salt', '3': 3, '4': 1, '5': 12, '10': 'confirmationCodeSalt'},
    const {'1': 'confirmation_code_hash', '3': 4, '4': 1, '5': 12, '10': 'confirmationCodeHash'},
    const {'1': 'expires_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiresAt'},
  ],
};

/// Descriptor for `AuthenticationToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticationTokenDescriptor = $convert.base64Decode('ChNBdXRoZW50aWNhdGlvblRva2VuEkIKB3BheWxvYWQYASABKAsyKC5wYW5zeS52YXVsdC5BdXRoZW50aWNhdGlvblRva2VuLlBheWxvYWRSB3BheWxvYWQSHAoJc2lnbmF0dXJlGAIgASgMUglzaWduYXR1cmUa5gEKB1BheWxvYWQSHAoJcmVxdWVzdElkGAEgASgJUglyZXF1ZXN0SWQSFgoGdGFyZ2V0GAIgASgJUgZ0YXJnZXQSNAoWY29uZmlybWF0aW9uX2NvZGVfc2FsdBgDIAEoDFIUY29uZmlybWF0aW9uQ29kZVNhbHQSNAoWY29uZmlybWF0aW9uX2NvZGVfaGFzaBgEIAEoDFIUY29uZmlybWF0aW9uQ29kZUhhc2gSOQoKZXhwaXJlc19hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWV4cGlyZXNBdA==');
