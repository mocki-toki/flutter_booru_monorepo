///
//  Generated code. Do not modify.
//  source: sdk/remote/isar/isar_typed_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'isar_typed_message.pbenum.dart';

export 'isar_typed_message.pbenum.dart';

class IsarTypedMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsarTypedMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.sdk'), createEmptyInstance: create)
    ..e<MessageType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageType', $pb.PbFieldType.OE, defaultOrMaker: MessageType.MESSAGE_TYPE_UPDATE, valueOf: MessageType.valueOf, enumValues: MessageType.values)
    ..hasRequiredFields = false
  ;

  IsarTypedMessage._() : super();
  factory IsarTypedMessage({
    MessageType? messageType,
  }) {
    final _result = create();
    if (messageType != null) {
      _result.messageType = messageType;
    }
    return _result;
  }
  factory IsarTypedMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsarTypedMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsarTypedMessage clone() => IsarTypedMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsarTypedMessage copyWith(void Function(IsarTypedMessage) updates) => super.copyWith((message) => updates(message as IsarTypedMessage)) as IsarTypedMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsarTypedMessage create() => IsarTypedMessage._();
  IsarTypedMessage createEmptyInstance() => create();
  static $pb.PbList<IsarTypedMessage> createRepeated() => $pb.PbList<IsarTypedMessage>();
  @$core.pragma('dart2js:noInline')
  static IsarTypedMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsarTypedMessage>(create);
  static IsarTypedMessage? _defaultInstance;

  @$pb.TagNumber(1)
  MessageType get messageType => $_getN(0);
  @$pb.TagNumber(1)
  set messageType(MessageType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageType() => clearField(1);
}

