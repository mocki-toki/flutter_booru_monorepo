///
//  Generated code. Do not modify.
//  source: vault/models/scope_session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use scopeSessionDescriptor instead')
const ScopeSession$json = const {
  '1': 'ScopeSession',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'scope_id', '3': 2, '4': 1, '5': 9, '10': 'scopeId'},
    const {'1': 'can_write', '3': 3, '4': 1, '5': 8, '10': 'canWrite'},
  ],
};

/// Descriptor for `ScopeSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scopeSessionDescriptor = $convert.base64Decode('CgxTY29wZVNlc3Npb24SDgoCaWQYASABKAlSAmlkEhkKCHNjb3BlX2lkGAIgASgJUgdzY29wZUlkEhsKCWNhbl93cml0ZRgDIAEoCFIIY2FuV3JpdGU=');
