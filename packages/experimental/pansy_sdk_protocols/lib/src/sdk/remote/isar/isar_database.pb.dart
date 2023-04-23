///
//  Generated code. Do not modify.
//  source: sdk/remote/isar/isar_database.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'isar_typed_message.pbenum.dart' as $2;

class IsarDatabase extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsarDatabase', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.sdk'), createEmptyInstance: create)
    ..e<$2.MessageType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageType', $pb.PbFieldType.OE, defaultOrMaker: $2.MessageType.MESSAGE_TYPE_UPDATE, valueOf: $2.MessageType.valueOf, enumValues: $2.MessageType.values)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'collectionBoxIds', entryClassName: 'IsarDatabase.CollectionBoxIdsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('pansy.sdk'))
    ..hasRequiredFields = false
  ;

  IsarDatabase._() : super();
  factory IsarDatabase({
    $2.MessageType? messageType,
    $core.int? version,
    $core.Map<$core.String, $core.String>? collectionBoxIds,
  }) {
    final _result = create();
    if (messageType != null) {
      _result.messageType = messageType;
    }
    if (version != null) {
      _result.version = version;
    }
    if (collectionBoxIds != null) {
      _result.collectionBoxIds.addAll(collectionBoxIds);
    }
    return _result;
  }
  factory IsarDatabase.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsarDatabase.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsarDatabase clone() => IsarDatabase()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsarDatabase copyWith(void Function(IsarDatabase) updates) => super.copyWith((message) => updates(message as IsarDatabase)) as IsarDatabase; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsarDatabase create() => IsarDatabase._();
  IsarDatabase createEmptyInstance() => create();
  static $pb.PbList<IsarDatabase> createRepeated() => $pb.PbList<IsarDatabase>();
  @$core.pragma('dart2js:noInline')
  static IsarDatabase getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsarDatabase>(create);
  static IsarDatabase? _defaultInstance;

  @$pb.TagNumber(1)
  $2.MessageType get messageType => $_getN(0);
  @$pb.TagNumber(1)
  set messageType($2.MessageType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get collectionBoxIds => $_getMap(2);
}

