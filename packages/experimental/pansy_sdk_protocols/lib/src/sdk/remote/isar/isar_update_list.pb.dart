///
//  Generated code. Do not modify.
//  source: sdk/remote/isar/isar_update_list.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IsarUpdateList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsarUpdateList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.sdk'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateBoxIds')
    ..hasRequiredFields = false
  ;

  IsarUpdateList._() : super();
  factory IsarUpdateList({
    $core.Iterable<$core.String>? updateBoxIds,
  }) {
    final _result = create();
    if (updateBoxIds != null) {
      _result.updateBoxIds.addAll(updateBoxIds);
    }
    return _result;
  }
  factory IsarUpdateList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsarUpdateList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsarUpdateList clone() => IsarUpdateList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsarUpdateList copyWith(void Function(IsarUpdateList) updates) => super.copyWith((message) => updates(message as IsarUpdateList)) as IsarUpdateList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsarUpdateList create() => IsarUpdateList._();
  IsarUpdateList createEmptyInstance() => create();
  static $pb.PbList<IsarUpdateList> createRepeated() => $pb.PbList<IsarUpdateList>();
  @$core.pragma('dart2js:noInline')
  static IsarUpdateList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsarUpdateList>(create);
  static IsarUpdateList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get updateBoxIds => $_getList(0);
}

