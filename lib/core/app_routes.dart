import 'package:amit_project/screens/OnBoarding/OnBoarding.dart';
import 'package:amit_project/screens/SplashScreen/SplashScreen.dart';
import 'package:amit_project/screens/home/home.dart';
import 'package:amit_project/screens/user_handel/create%20account/create_account.dart';
import 'package:amit_project/screens/user_handel/login/Login.dart';
import 'package:amit_project/screens/user_handel/reset%20password/reset_password.dart';
import 'package:flutter/material.dart';

import '../screens/OnBoarding/components/page2.dart';
import '../screens/OnBoarding/components/page3.dart';

class App_Routes {
  static const String splash = "/";
  //OnBoarding
  static const String onboarding = "OnBoarding";
  static const String page2 = "OnBoarding_page2";
  static const String page3 = "OnBoarding_page3";
//userhandel
  static const String login = "Login";
  static const String create_account = "create_account";
  static const String reset_password = "reset_password";
  static const String emailSent = "emailSent";
  static const String chooseNewPass = "chooseNewPass";
  static const String resetSuccessScreen = "resetSuccessScreen";

  //homescreen
  static const String home = "home";
  static const String categories = "categories";

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );
      case onboarding:
        return MaterialPageRoute(
          builder: (context) {
            return OnBoarding();
          },
        );
      case page2:
        return MaterialPageRoute(
          builder: (context) {
            return OnBoarding_page2();
          },
        );
      case page3:
        return MaterialPageRoute(
          builder: (context) {
            return OnBoarding_page3();
          },
        );
      case login:
        return MaterialPageRoute(
          builder: (context) {
            return const Login();
          },
        );
      case create_account:
        return MaterialPageRoute(
          builder: (context) {
            return const CreateAccount();
          },
        );
      case reset_password:
        return MaterialPageRoute(
          builder: (context) {
            return const ResetPassword();
          },
        );
      case home:
        return MaterialPageRoute(
          builder: (context) {
            return const Home();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text("No route defined for ${setting.name}"),
              ),
            );
          },
        );
    }
  }
}



      // case register:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return const Register();
      //     },
      //   );
      // case stream:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return const Stream();
      //     },
      //   );
      // case notes:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return const Notes();
      //     },
      //   );
      // case addnote:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return AddNote();
      //     },
      //   );
