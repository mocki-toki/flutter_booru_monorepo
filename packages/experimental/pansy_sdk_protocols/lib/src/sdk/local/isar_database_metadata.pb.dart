///
//  Generated code. Do not modify.
//  source: sdk/local/isar_database_metadata.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IsarDatabaseMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsarDatabaseMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.sdk'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'databaseBoxId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateListBoxId')
    ..hasRequiredFields = false
  ;

  IsarDatabaseMetadata._() : super();
  factory IsarDatabaseMetadata({
    $core.int? version,
    $core.String? databaseBoxId,
    $core.String? updateListBoxId,
  }) {
    final _result = create();
    if (version != null) {
      _result.version = version;
    }
    if (databaseBoxId != null) {
      _result.databaseBoxId = databaseBoxId;
    }
    if (updateListBoxId != null) {
      _result.updateListBoxId = updateListBoxId;
    }
    return _result;
  }
  factory IsarDatabaseMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsarDatabaseMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsarDatabaseMetadata clone() => IsarDatabaseMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsarDatabaseMetadata copyWith(void Function(IsarDatabaseMetadata) updates) => super.copyWith((message) => updates(message as IsarDatabaseMetadata)) as IsarDatabaseMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsarDatabaseMetadata create() => IsarDatabaseMetadata._();
  IsarDatabaseMetadata createEmptyInstance() => create();
  static $pb.PbList<IsarDatabaseMetadata> createRepeated() => $pb.PbList<IsarDatabaseMetadata>();
  @$core.pragma('dart2js:noInline')
  static IsarDatabaseMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsarDatabaseMetadata>(create);
  static IsarDatabaseMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get databaseBoxId => $_getSZ(1);
  @$pb.TagNumber(2)
  set databaseBoxId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDatabaseBoxId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDatabaseBoxId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get updateListBoxId => $_getSZ(2);
  @$pb.TagNumber(3)
  set updateListBoxId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdateListBoxId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateListBoxId() => clearField(3);
}

