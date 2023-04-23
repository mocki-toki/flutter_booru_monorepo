///
//  Generated code. Do not modify.
//  source: sdk/remote/isar/isar_database.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use isarDatabaseDescriptor instead')
const IsarDatabase$json = const {
  '1': 'IsarDatabase',
  '2': const [
    const {'1': 'message_type', '3': 1, '4': 1, '5': 14, '6': '.pansy.sdk.MessageType', '10': 'messageType'},
    const {'1': 'version', '3': 2, '4': 1, '5': 5, '10': 'version'},
    const {'1': 'collection_box_ids', '3': 3, '4': 3, '5': 11, '6': '.pansy.sdk.IsarDatabase.CollectionBoxIdsEntry', '10': 'collectionBoxIds'},
  ],
  '3': const [IsarDatabase_CollectionBoxIdsEntry$json],
};

@$core.Deprecated('Use isarDatabaseDescriptor instead')
const IsarDatabase_CollectionBoxIdsEntry$json = const {
  '1': 'CollectionBoxIdsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `IsarDatabase`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isarDatabaseDescriptor = $convert.base64Decode('CgxJc2FyRGF0YWJhc2USOQoMbWVzc2FnZV90eXBlGAEgASgOMhYucGFuc3kuc2RrLk1lc3NhZ2VUeXBlUgttZXNzYWdlVHlwZRIYCgd2ZXJzaW9uGAIgASgFUgd2ZXJzaW9uElsKEmNvbGxlY3Rpb25fYm94X2lkcxgDIAMoCzItLnBhbnN5LnNkay5Jc2FyRGF0YWJhc2UuQ29sbGVjdGlvbkJveElkc0VudHJ5UhBjb2xsZWN0aW9uQm94SWRzGkMKFUNvbGxlY3Rpb25Cb3hJZHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');
