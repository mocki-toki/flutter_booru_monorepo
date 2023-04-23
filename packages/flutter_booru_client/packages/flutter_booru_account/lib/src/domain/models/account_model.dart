import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_account/src/domain/converters/email_value_converter.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

part 'account_model.g.dart';

@JsonSerializable(converters: [
  UuidValueConverter(),
  EmailValueConverter(),
])
class AccountModel extends Equatable {
  const AccountModel({
    required this.uuid,
    required this.email,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);

  final UuidValue uuid;
  final EmailValue email;

  @override
  List<Object?> get props => [uuid, email];

  Map<String, dynamic> toJson() => _$AccountModelToJson(this);
}
