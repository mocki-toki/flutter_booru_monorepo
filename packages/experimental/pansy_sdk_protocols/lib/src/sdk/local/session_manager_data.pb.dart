///
//  Generated code. Do not modify.
//  source: sdk/local/session_manager_data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'session_data.pb.dart' as $1;

class SessionManagerData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SessionManagerData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.sdk'), createEmptyInstance: create)
    ..pc<$1.SessionData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessions', $pb.PbFieldType.PM, subBuilder: $1.SessionData.create)
    ..hasRequiredFields = false
  ;

  SessionManagerData._() : super();
  factory SessionManagerData({
    $core.Iterable<$1.SessionData>? sessions,
  }) {
    final _result = create();
    if (sessions != null) {
      _result.sessions.addAll(sessions);
    }
    return _result;
  }
  factory SessionManagerData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SessionManagerData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SessionManagerData clone() => SessionManagerData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SessionManagerData copyWith(void Function(SessionManagerData) updates) => super.copyWith((message) => updates(message as SessionManagerData)) as SessionManagerData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SessionManagerData create() => SessionManagerData._();
  SessionManagerData createEmptyInstance() => create();
  static $pb.PbList<SessionManagerData> createRepeated() => $pb.PbList<SessionManagerData>();
  @$core.pragma('dart2js:noInline')
  static SessionManagerData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SessionManagerData>(create);
  static SessionManagerData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.SessionData> get sessions => $_getList(0);
}

