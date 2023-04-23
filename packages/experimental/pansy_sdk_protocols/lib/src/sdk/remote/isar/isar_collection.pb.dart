///
//  Generated code. Do not modify.
//  source: sdk/remote/isar/isar_collection.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IsarCollection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsarCollection', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.sdk'), createEmptyInstance: create)
    ..m<$core.int, $core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'objects', entryClassName: 'IsarCollection.ObjectsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('pansy.sdk'))
    ..hasRequiredFields = false
  ;

  IsarCollection._() : super();
  factory IsarCollection({
    $core.Map<$core.int, $core.List<$core.int>>? objects,
  }) {
    final _result = create();
    if (objects != null) {
      _result.objects.addAll(objects);
    }
    return _result;
  }
  factory IsarCollection.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsarCollection.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsarCollection clone() => IsarCollection()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsarCollection copyWith(void Function(IsarCollection) updates) => super.copyWith((message) => updates(message as IsarCollection)) as IsarCollection; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsarCollection create() => IsarCollection._();
  IsarCollection createEmptyInstance() => create();
  static $pb.PbList<IsarCollection> createRepeated() => $pb.PbList<IsarCollection>();
  @$core.pragma('dart2js:noInline')
  static IsarCollection getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsarCollection>(create);
  static IsarCollection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, $core.List<$core.int>> get objects => $_getMap(0);
}

