import 'package:amit_project/screens/OnBoarding/OnBoarding.dart';
import 'package:amit_project/screens/SplashScreen/SplashScreen.dart';
import 'package:amit_project/screens/home/home.dart';
import 'package:amit_project/screens/user_handel/create%20account/components/categories_screen.dart';
import 'package:amit_project/screens/user_handel/create%20account/components/countries_screen.dart';
import 'package:amit_project/screens/user_handel/create%20account/create_account.dart';
import 'package:amit_project/screens/user_handel/login/Login.dart';
import 'package:amit_project/screens/user_handel/reset%20password/components/email_sent_screen.dart';
import 'package:amit_project/screens/user_handel/reset%20password/components/new_password_screen.dart';
import 'package:amit_project/screens/user_handel/reset%20password/components/reset_success_screen.dart';
import 'package:amit_project/screens/user_handel/reset%20password/reset_password.dart';
import 'package:flutter/material.dart';

import '../screens/OnBoarding/components/page2.dart';
import '../screens/OnBoarding/components/page3.dart';
import '../screens/user_handel/create account/components/creation_success_screen.dart';

class App_Routes {
  static const String splash = "/";
  //OnBoarding
  static const String onboarding = "onboarding";
  static const String page2 = "OnBoarding_page2";
  static const String page3 = "OnBoarding_page3";
//userhandel

  static const String login = "Login";

  //create account and choose categories and countries
  static const String create_account = "create_account";
  static const String categories = "categories";
  static const String countries = "CountryChoice";
  static const String createSuccessScreen = "createSuccessScreen";
//reset password and email send
  static const String reset_password = "reset_password";
  static const String emailSent = "emailSent";
  static const String chooseNewPass = "chooseNewPass";
  static const String resetSuccessScreen = "resetSuccessScreen";

  //homescreen
  static const String home = "home";

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/splash"),
          builder: (context) {
            return const SplashScreen();
          },
        );
      case onboarding:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/onboarding"),
          builder: (context) {
            return OnBoarding();
          },
        );
      case page2:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/OnBoarding_page2"),
          builder: (context) {
            return OnBoarding_page2();
          },
        );
      case page3:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/OnBoarding_page3"),
          builder: (context) {
            return OnBoarding_page3();
          },
        );
      case login:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/login"),
          builder: (context) {
            return const Login();
          },
        );
      case create_account:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/create_account"),
          builder: (context) {
            return const CreateAccount();
          },
        );
      case reset_password:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/reset_password"),
          builder: (context) {
            return const ResetPassword();
          },
        );
      case emailSent:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/emailSent"),
          builder: (context) {
            return const EmailSentScreen();
          },
        );
      case resetSuccessScreen:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/resetSuccessScreen"),
          builder: (context) {
            return const ResetSuccessScreen();
          },
        );
      case chooseNewPass:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/chooseNewPass"),
          builder: (context) {
            return const NewPasswordScreen();
          },
        );
      case categories:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/categories"),
          builder: (context) => const CategoriesScreen(),
        );
      case countries:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/CountryChoice"),
          builder: (context) => const CountriesScreen(),
        );
      case createSuccessScreen:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/createSuccessScreen"),
          builder: (context) => const CreationSuccessScreen(),
        );
      case home:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/home"),
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
