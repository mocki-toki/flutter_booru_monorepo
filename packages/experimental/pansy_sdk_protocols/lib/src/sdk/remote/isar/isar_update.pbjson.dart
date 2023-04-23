///
//  Generated code. Do not modify.
//  source: sdk/remote/isar/isar_update.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use isarUpdateDescriptor instead')
const IsarUpdate$json = const {
  '1': 'IsarUpdate',
  '2': const [
    const {'1': 'message_type', '3': 1, '4': 1, '5': 14, '6': '.pansy.sdk.MessageType', '10': 'messageType'},
    const {'1': 'collection_name', '3': 2, '4': 1, '5': 9, '10': 'collectionName'},
    const {'1': 'put_objects', '3': 3, '4': 3, '5': 11, '6': '.pansy.sdk.IsarUpdate.PutObjectsEntry', '10': 'putObjects'},
    const {'1': 'deleted_objects', '3': 4, '4': 3, '5': 5, '10': 'deletedObjects'},
  ],
  '3': const [IsarUpdate_PutObjectsEntry$json],
};

@$core.Deprecated('Use isarUpdateDescriptor instead')
const IsarUpdate_PutObjectsEntry$json = const {
  '1': 'PutObjectsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `IsarUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isarUpdateDescriptor = $convert.base64Decode('CgpJc2FyVXBkYXRlEjkKDG1lc3NhZ2VfdHlwZRgBIAEoDjIWLnBhbnN5LnNkay5NZXNzYWdlVHlwZVILbWVzc2FnZVR5cGUSJwoPY29sbGVjdGlvbl9uYW1lGAIgASgJUg5jb2xsZWN0aW9uTmFtZRJGCgtwdXRfb2JqZWN0cxgDIAMoCzIlLnBhbnN5LnNkay5Jc2FyVXBkYXRlLlB1dE9iamVjdHNFbnRyeVIKcHV0T2JqZWN0cxInCg9kZWxldGVkX29iamVjdHMYBCADKAVSDmRlbGV0ZWRPYmplY3RzGj0KD1B1dE9iamVjdHNFbnRyeRIQCgNrZXkYASABKAVSA2tleRIUCgV2YWx1ZRgCIAEoDFIFdmFsdWU6AjgB');
