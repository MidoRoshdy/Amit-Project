import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/screens/user_handel/login/provider/LoginState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProvider extends ChangeNotifier {
  LoginState state = LoginState();

  void onPasswordChange(String value) {
    value.isEmpty
        ? state.passwordErrorMessage = "You must enter a password"
        : value.length < 8
            ? state.passwordErrorMessage =
                "Password must be at least 8 characters"
            : state.passwordErrorMessage = null;
    state.password = value;
    notifyListeners();
  }

  void onUsernameChange(String value) {
    value.isEmpty
        ? state.usernameErrorMessage = "You must enter a username"
        : state.usernameErrorMessage = null;
    state.username = value;
    notifyListeners();
  }

  void showPassword() {
    state.hidePass == true ? state.hidePass = false : state.hidePass = true;
    notifyListeners();
  }

  bool validate() {
    if (state.passwordErrorMessage == null &&
        state.usernameErrorMessage == null &&
        state.password != null &&
        state.username != null) {
      return true;
    } else {
      return false;
    }
  }

  logInWithGoogle(BuildContext context) {}

  logInWithFacebook(BuildContext context) {}

  navigateToRegister(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(App_Routes.create_account);
  }

  logIn(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(App_Routes.home, (route) => false);
  }

  void onChangeRememberMe(bool? value) async {
    state.rememberMe = value!;

    SharedPreferences SaveData = await SharedPreferences.getInstance();
    SaveData.setString("username", state.usernameController.text);
    SaveData.setString("password", state.passwordController.text);
    print("success");

    notifyListeners();
  }

  navigateToForgotPawwsord(BuildContext context) {
    Navigator.of(context).pushNamed(App_Routes.reset_password);
  }
}
