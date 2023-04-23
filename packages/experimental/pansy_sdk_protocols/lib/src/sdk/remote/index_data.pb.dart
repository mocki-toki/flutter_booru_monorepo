///
//  Generated code. Do not modify.
//  source: sdk/remote/index_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IndexData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IndexData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.sdk'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sdk')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rootScopeId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'indexBoxId')
    ..hasRequiredFields = false
  ;

  IndexData._() : super();
  factory IndexData({
    $core.String? sdk,
    $core.int? version,
    $core.String? rootScopeId,
    $core.String? indexBoxId,
  }) {
    final _result = create();
    if (sdk != null) {
      _result.sdk = sdk;
    }
    if (version != null) {
      _result.version = version;
    }
    if (rootScopeId != null) {
      _result.rootScopeId = rootScopeId;
    }
    if (indexBoxId != null) {
      _result.indexBoxId = indexBoxId;
    }
    return _result;
  }
  factory IndexData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IndexData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IndexData clone() => IndexData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IndexData copyWith(void Function(IndexData) updates) => super.copyWith((message) => updates(message as IndexData)) as IndexData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IndexData create() => IndexData._();
  IndexData createEmptyInstance() => create();
  static $pb.PbList<IndexData> createRepeated() => $pb.PbList<IndexData>();
  @$core.pragma('dart2js:noInline')
  static IndexData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IndexData>(create);
  static IndexData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sdk => $_getSZ(0);
  @$pb.TagNumber(1)
  set sdk($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSdk() => $_has(0);
  @$pb.TagNumber(1)
  void clearSdk() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get version => $_getIZ(1);
  @$pb.TagNumber(2)
  set version($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get rootScopeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set rootScopeId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRootScopeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRootScopeId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get indexBoxId => $_getSZ(3);
  @$pb.TagNumber(4)
  set indexBoxId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIndexBoxId() => $_has(3);
  @$pb.TagNumber(4)
  void clearIndexBoxId() => clearField(4);
}

