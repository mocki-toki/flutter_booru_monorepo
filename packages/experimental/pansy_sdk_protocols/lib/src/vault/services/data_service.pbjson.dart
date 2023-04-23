///
//  Generated code. Do not modify.
//  source: vault/services/data_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use boxUpdateDescriptor instead')
const BoxUpdate$json = const {
  '1': 'BoxUpdate',
  '2': const [
    const {'1': 'box_id', '3': 1, '4': 1, '5': 9, '10': 'boxId'},
    const {'1': 'content', '3': 2, '4': 1, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `BoxUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boxUpdateDescriptor = $convert.base64Decode('CglCb3hVcGRhdGUSFQoGYm94X2lkGAEgASgJUgVib3hJZBIYCgdjb250ZW50GAIgASgMUgdjb250ZW50');
@$core.Deprecated('Use readRequestDescriptor instead')
const ReadRequest$json = const {
  '1': 'ReadRequest',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.ScopeAccessToken', '10': 'accessToken'},
    const {'1': 'box_ids', '3': 2, '4': 3, '5': 9, '10': 'boxIds'},
  ],
};

/// Descriptor for `ReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readRequestDescriptor = $convert.base64Decode('CgtSZWFkUmVxdWVzdBJACgxhY2Nlc3NfdG9rZW4YASABKAsyHS5wYW5zeS52YXVsdC5TY29wZUFjY2Vzc1Rva2VuUgthY2Nlc3NUb2tlbhIXCgdib3hfaWRzGAIgAygJUgZib3hJZHM=');
@$core.Deprecated('Use readResponseDescriptor instead')
const ReadResponse$json = const {
  '1': 'ReadResponse',
  '2': const [
    const {'1': 'content', '3': 1, '4': 3, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `ReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readResponseDescriptor = $convert.base64Decode('CgxSZWFkUmVzcG9uc2USGAoHY29udGVudBgBIAMoDFIHY29udGVudA==');
@$core.Deprecated('Use writeRequestDescriptor instead')
const WriteRequest$json = const {
  '1': 'WriteRequest',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.ScopeAccessToken', '10': 'accessToken'},
    const {'1': 'updates', '3': 2, '4': 3, '5': 11, '6': '.pansy.vault.BoxUpdate', '10': 'updates'},
    const {'1': 'sync', '3': 3, '4': 1, '5': 8, '10': 'sync'},
  ],
};

/// Descriptor for `WriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeRequestDescriptor = $convert.base64Decode('CgxXcml0ZVJlcXVlc3QSQAoMYWNjZXNzX3Rva2VuGAEgASgLMh0ucGFuc3kudmF1bHQuU2NvcGVBY2Nlc3NUb2tlblILYWNjZXNzVG9rZW4SMAoHdXBkYXRlcxgCIAMoCzIWLnBhbnN5LnZhdWx0LkJveFVwZGF0ZVIHdXBkYXRlcxISCgRzeW5jGAMgASgIUgRzeW5j');
@$core.Deprecated('Use listRequestDescriptor instead')
const ListRequest$json = const {
  '1': 'ListRequest',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.ScopeAccessToken', '10': 'accessToken'},
  ],
};

/// Descriptor for `ListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRequestDescriptor = $convert.base64Decode('CgtMaXN0UmVxdWVzdBJACgxhY2Nlc3NfdG9rZW4YASABKAsyHS5wYW5zeS52YXVsdC5TY29wZUFjY2Vzc1Rva2VuUgthY2Nlc3NUb2tlbg==');
@$core.Deprecated('Use listResponseDescriptor instead')
const ListResponse$json = const {
  '1': 'ListResponse',
  '2': const [
    const {'1': 'box_ids', '3': 1, '4': 3, '5': 9, '10': 'boxIds'},
  ],
};

/// Descriptor for `ListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResponseDescriptor = $convert.base64Decode('CgxMaXN0UmVzcG9uc2USFwoHYm94X2lkcxgBIAMoCVIGYm94SWRz');
@$core.Deprecated('Use deleteRequestDescriptor instead')
const DeleteRequest$json = const {
  '1': 'DeleteRequest',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 11, '6': '.pansy.vault.ScopeAccessToken', '10': 'accessToken'},
    const {'1': 'box_ids', '3': 2, '4': 3, '5': 9, '10': 'boxIds'},
  ],
};

/// Descriptor for `DeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRequestDescriptor = $convert.base64Decode('Cg1EZWxldGVSZXF1ZXN0EkAKDGFjY2Vzc190b2tlbhgBIAEoCzIdLnBhbnN5LnZhdWx0LlNjb3BlQWNjZXNzVG9rZW5SC2FjY2Vzc1Rva2VuEhcKB2JveF9pZHMYAiADKAlSBmJveElkcw==');
