///
//  Generated code. Do not modify.
//  source: sdk/remote/isar/isar_update.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'isar_typed_message.pbenum.dart' as $2;

class IsarUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsarUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.sdk'), createEmptyInstance: create)
    ..e<$2.MessageType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageType', $pb.PbFieldType.OE, defaultOrMaker: $2.MessageType.MESSAGE_TYPE_UPDATE, valueOf: $2.MessageType.valueOf, enumValues: $2.MessageType.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectionName')
    ..m<$core.int, $core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'putObjects', entryClassName: 'IsarUpdate.PutObjectsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('pansy.sdk'))
    ..p<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deletedObjects', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  IsarUpdate._() : super();
  factory IsarUpdate({
    $2.MessageType? messageType,
    $core.String? collectionName,
    $core.Map<$core.int, $core.List<$core.int>>? putObjects,
    $core.Iterable<$core.int>? deletedObjects,
  }) {
    final _result = create();
    if (messageType != null) {
      _result.messageType = messageType;
    }
    if (collectionName != null) {
      _result.collectionName = collectionName;
    }
    if (putObjects != null) {
      _result.putObjects.addAll(putObjects);
    }
    if (deletedObjects != null) {
      _result.deletedObjects.addAll(deletedObjects);
    }
    return _result;
  }
  factory IsarUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsarUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsarUpdate clone() => IsarUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsarUpdate copyWith(void Function(IsarUpdate) updates) => super.copyWith((message) => updates(message as IsarUpdate)) as IsarUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsarUpdate create() => IsarUpdate._();
  IsarUpdate createEmptyInstance() => create();
  static $pb.PbList<IsarUpdate> createRepeated() => $pb.PbList<IsarUpdate>();
  @$core.pragma('dart2js:noInline')
  static IsarUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsarUpdate>(create);
  static IsarUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  $2.MessageType get messageType => $_getN(0);
  @$pb.TagNumber(1)
  set messageType($2.MessageType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get collectionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set collectionName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCollectionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionName() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.int, $core.List<$core.int>> get putObjects => $_getMap(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get deletedObjects => $_getList(3);
}

