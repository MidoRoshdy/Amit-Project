import 'package:amit_project/Data/Models/auth/login_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/enum.dart';

class LoginState {
  ScreenStates states = ScreenStates.init;
  //! vars
  String? email;
  String? password;
  String? token;

  //! controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //! errors
  String? usernameErrorMessage;
  String? passwordErrorMessage;

  //! bools
  bool hidePass = true;
  bool rememberMe = false;
  LoginModel? loginModel;
}
