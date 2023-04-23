import 'package:flutter_booru_profile/src/domain/entities/username_value.dart';
import 'package:equatable/equatable.dart';

class InputProfileInfoModel extends Equatable {
  const InputProfileInfoModel({required this.username});

  final UsernameValue username;

  @override
  List<Object?> get props => [username];
}
