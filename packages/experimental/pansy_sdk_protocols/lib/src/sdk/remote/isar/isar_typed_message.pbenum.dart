///
//  Generated code. Do not modify.
//  source: sdk/remote/isar/isar_typed_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MessageType extends $pb.ProtobufEnum {
  static const MessageType MESSAGE_TYPE_UPDATE = MessageType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MESSAGE_TYPE_UPDATE');
  static const MessageType MESSAGE_TYPE_DATABASE = MessageType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MESSAGE_TYPE_DATABASE');

  static const $core.List<MessageType> values = <MessageType> [
    MESSAGE_TYPE_UPDATE,
    MESSAGE_TYPE_DATABASE,
  ];

  static final $core.Map<$core.int, MessageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageType? valueOf($core.int value) => _byValue[value];

  const MessageType._($core.int v, $core.String n) : super(v, n);
}

