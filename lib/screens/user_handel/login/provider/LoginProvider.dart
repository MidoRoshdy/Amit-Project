import 'dart:convert';

import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/screens/user_handel/login/provider/LoginState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../../../core/api_routes.dart';

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
    state.email = value;
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
        state.email != null) {
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
    SaveData.setString("email", state.emailController.text);
    SaveData.setString("password", state.passwordController.text);
    print("success");

    notifyListeners();
  }

  navigateToForgotPawwsord(BuildContext context) {
    Navigator.of(context).pushNamed(App_Routes.reset_password);
  }

/////////login api///////////
  loginapi() async {
    var response = await http.post(Uri.parse(ApiRoutes.loginUrl), body: {
      "email": state.emailController.text,
      "password": state.passwordController.text,
    });
    if (response.statusCode == 200) {
      var jsonresponse = jsonDecode(response.body);
      Map<String, dynamic> userDataList =
          Map<String, dynamic>.from(jsonresponse);
      setUserData(
        userDataList["token"],
        userDataList["user"]["name"],
        userDataList["user"]["email"],
        state.passwordController,
        userDataList["user"]["updated_at"],
        userDataList["user"]["created_at"],
        userDataList["user"]["otp"],
        userDataList["user"]["id"],
      );
      print(userDataList["token"]);
      return true;
    } else {
      print(response.statusCode);
      return false;
    }
  }

  Future<void> setUserData(
    token,
    usernameValue,
    emailValue,
    passwordValue,
    updatedAtValue,
    createdAtValue,
    otpValue,
    idValue,
  ) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString("token", '$token');
    sharedPreferences.setString("usernameValue", '$usernameValue');
    sharedPreferences.setString("emailValue", '$emailValue');
    sharedPreferences.setString("passwordValue", '$passwordValue');
    sharedPreferences.setString("updated_atValue", '$updatedAtValue');
    sharedPreferences.setString("created_atValue", '$createdAtValue');
    sharedPreferences.setString("idValue", '$idValue');
    sharedPreferences.setString("otpValue", '$otpValue');

    print("token is $token");
  }
}
