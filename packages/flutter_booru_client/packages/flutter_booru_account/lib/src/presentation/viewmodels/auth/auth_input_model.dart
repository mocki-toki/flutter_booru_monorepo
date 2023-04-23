import 'package:flutter/widgets.dart';
import 'package:equatable/equatable.dart';

class AuthInputModel extends Equatable {
  AuthInputModel({
    TextEditingController? emailController,
    TextEditingController? passwordController,
  })  : emailController = emailController ?? TextEditingController(),
        passwordController = passwordController ?? TextEditingController();

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  List<Object?> get props => [emailController, passwordController];

  void clear() {
    emailController.clear();
    passwordController.clear();
  }
}
