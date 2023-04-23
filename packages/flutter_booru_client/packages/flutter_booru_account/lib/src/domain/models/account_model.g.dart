// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) => AccountModel(
      uuid: const UuidValueConverter().fromJson(json['uuid'] as String),
      email: const EmailValueConverter().fromJson(json['email'] as String),
    );

Map<String, dynamic> _$AccountModelToJson(AccountModel instance) =>
    <String, dynamic>{
      'uuid': const UuidValueConverter().toJson(instance.uuid),
      'email': const EmailValueConverter().toJson(instance.email),
    };
