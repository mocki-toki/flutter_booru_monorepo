///
//  Generated code. Do not modify.
//  source: sdk/local/session_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sessionTypeDescriptor instead')
const SessionType$json = const {
  '1': 'SessionType',
  '2': const [
    const {'1': 'SESSION_TYPE_ACCOUNT', '2': 0},
    const {'1': 'SESSION_TYPE_SCOPE', '2': 1},
  ],
};

/// Descriptor for `SessionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sessionTypeDescriptor = $convert.base64Decode('CgtTZXNzaW9uVHlwZRIYChRTRVNTSU9OX1RZUEVfQUNDT1VOVBAAEhYKElNFU1NJT05fVFlQRV9TQ09QRRAB');
@$core.Deprecated('Use sessionDataDescriptor instead')
const SessionData$json = const {
  '1': 'SessionData',
  '2': const [
    const {'1': 'session_id', '3': 1, '4': 1, '5': 9, '10': 'sessionId'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.pansy.sdk.SessionType', '10': 'type'},
    const {'1': 'refresh_token', '3': 3, '4': 1, '5': 12, '10': 'refreshToken'},
    const {'1': 'encryption_key', '3': 4, '4': 1, '5': 12, '10': 'encryptionKey'},
    const {'1': 'metadata', '3': 5, '4': 3, '5': 11, '6': '.pansy.sdk.SessionData.MetadataEntry', '10': 'metadata'},
  ],
  '3': const [SessionData_MetadataEntry$json],
};

@$core.Deprecated('Use sessionDataDescriptor instead')
const SessionData_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SessionData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionDataDescriptor = $convert.base64Decode('CgtTZXNzaW9uRGF0YRIdCgpzZXNzaW9uX2lkGAEgASgJUglzZXNzaW9uSWQSKgoEdHlwZRgCIAEoDjIWLnBhbnN5LnNkay5TZXNzaW9uVHlwZVIEdHlwZRIjCg1yZWZyZXNoX3Rva2VuGAMgASgMUgxyZWZyZXNoVG9rZW4SJQoOZW5jcnlwdGlvbl9rZXkYBCABKAxSDWVuY3J5cHRpb25LZXkSQAoIbWV0YWRhdGEYBSADKAsyJC5wYW5zeS5zZGsuU2Vzc2lvbkRhdGEuTWV0YWRhdGFFbnRyeVIIbWV0YWRhdGEaUQoNTWV0YWRhdGFFbnRyeRIQCgNrZXkYASABKAlSA2tleRIqCgV2YWx1ZRgCIAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSBXZhbHVlOgI4AQ==');
