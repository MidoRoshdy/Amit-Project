import 'package:flutter/material.dart';
import 'package:amit_project/screens/SplashScreen/provider/SplashState.dart';
import 'package:amit_project/screens/user_handel/login/provider/LoginState.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/app_routes.dart';

class SplashProvider extends ChangeNotifier {
  SplashState state = SplashState();
  LoginState states = LoginState();

  SavedData(BuildContext context) async {
    SharedPreferences SavedData = await SharedPreferences.getInstance();
    var obtainedusername = SavedData.getString("username");
    var obtainedpassword = SavedData.getString("password");
    if (obtainedusername == states.emailController &&
        obtainedpassword == states.passwordController) {
      Navigator.of(context).pushNamed(App_Routes.home);
    } else {
      Navigator.of(context).pushNamed(App_Routes.onboarding);
    }
  }
}
