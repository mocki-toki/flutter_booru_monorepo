///
//  Generated code. Do not modify.
//  source: vault/models/account_access_token_request.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'account_access_token.pb.dart' as $9;

class AccountAccessTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountAccessTokenRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pansy.vault'), createEmptyInstance: create)
    ..aOM<$9.AccountAccessToken>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken', subBuilder: $9.AccountAccessToken.create)
    ..hasRequiredFields = false
  ;

  AccountAccessTokenRequest._() : super();
  factory AccountAccessTokenRequest({
    $9.AccountAccessToken? accessToken,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory AccountAccessTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAccessTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAccessTokenRequest clone() => AccountAccessTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAccessTokenRequest copyWith(void Function(AccountAccessTokenRequest) updates) => super.copyWith((message) => updates(message as AccountAccessTokenRequest)) as AccountAccessTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAccessTokenRequest create() => AccountAccessTokenRequest._();
  AccountAccessTokenRequest createEmptyInstance() => create();
  static $pb.PbList<AccountAccessTokenRequest> createRepeated() => $pb.PbList<AccountAccessTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountAccessTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAccessTokenRequest>(create);
  static AccountAccessTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $9.AccountAccessToken get accessToken => $_getN(0);
  @$pb.TagNumber(1)
  set accessToken($9.AccountAccessToken v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);
  @$pb.TagNumber(1)
  $9.AccountAccessToken ensureAccessToken() => $_ensure(0);
}

