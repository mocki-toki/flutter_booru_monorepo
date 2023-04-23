///
//  Generated code. Do not modify.
//  source: sdk/remote/isar/isar_typed_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageTypeDescriptor instead')
const MessageType$json = const {
  '1': 'MessageType',
  '2': const [
    const {'1': 'MESSAGE_TYPE_UPDATE', '2': 0},
    const {'1': 'MESSAGE_TYPE_DATABASE', '2': 1},
  ],
};

/// Descriptor for `MessageType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List messageTypeDescriptor = $convert.base64Decode('CgtNZXNzYWdlVHlwZRIXChNNRVNTQUdFX1RZUEVfVVBEQVRFEAASGQoVTUVTU0FHRV9UWVBFX0RBVEFCQVNFEAE=');
@$core.Deprecated('Use isarTypedMessageDescriptor instead')
const IsarTypedMessage$json = const {
  '1': 'IsarTypedMessage',
  '2': const [
    const {'1': 'message_type', '3': 1, '4': 1, '5': 14, '6': '.pansy.sdk.MessageType', '10': 'messageType'},
  ],
};

/// Descriptor for `IsarTypedMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isarTypedMessageDescriptor = $convert.base64Decode('ChBJc2FyVHlwZWRNZXNzYWdlEjkKDG1lc3NhZ2VfdHlwZRgBIAEoDjIWLnBhbnN5LnNkay5NZXNzYWdlVHlwZVILbWVzc2FnZVR5cGU=');
