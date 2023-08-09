import 'dart:convert';
import 'dart:math';

import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/screens/user_handel/create%20account/providers/create_account_state.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/api_routes.dart';

class CreateAccountProvider extends ChangeNotifier {
  CreateAccountState state = CreateAccountState();

  void onEmailChange(String value) {
    value.isEmpty
        ? state.emailErrorMessage = "You must enter a mail"
        : EmailValidator.validate(value)
            ? state.emailErrorMessage = null
            : state.emailErrorMessage = "Enter a valid mail";
    state.email = value;
    notifyListeners();
  }

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
    state.name = value;
    notifyListeners();
  }

  void showPassword() {
    state.hidePass == true ? state.hidePass = false : state.hidePass = true;
    notifyListeners();
  }

  navigateToLogin(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(App_Routes.login);
  }

  createAccount(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(App_Routes.login, (route) => false);
  }

  bool validate() {
    if (state.emailErrorMessage == null &&
        state.passwordErrorMessage == null &&
        state.usernameErrorMessage == null &&
        state.email != null &&
        state.password != null &&
        state.name != null) {
      return true;
    } else {
      return false;
    }
  }

  signInWithGoogle(BuildContext context) {}

  signInWithFacebook(BuildContext context) {}

  void selectCategory(Map<String, dynamic> item) {
    if (!state.selectedCategories.contains(item)) {
      state.selectedCategories.add(item);
    } else {
      state.selectedCategories.remove(item);
    }
    notifyListeners();
  }

  void selectCountry(int index) {
    if (!state.selectedCountries
        .containsValue(state.countries.values.elementAt(index))) {
      state.selectedCountries.addAll({
        state.countries.keys.elementAt(index):
            state.countries.values.elementAt(index)
      });
    } else {
      state.selectedCountries
          .remove(state.selectedCountries.keys.elementAt(index));
    }
    notifyListeners();
  }

/////////register api///////////
  registerapi() async {
    var response = await http.post(Uri.parse(ApiRoutes.registerUrl), body: {
      "name": state.usernameController.text,
      "email": state.emailController.text,
      "password": state.passwordController.text,
    });
    if (response.statusCode == 200) {
      var jsonresponse = jsonDecode(response.body);
      Map<String, dynamic> registerDataList =
          Map<String, dynamic>.from(jsonresponse);
      print(registerDataList);
      log(response.statusCode);
      return true;
    } else {
      print(response.statusCode);
    }
    notifyListeners();
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
