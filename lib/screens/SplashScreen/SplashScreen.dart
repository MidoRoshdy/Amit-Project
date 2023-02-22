import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    handleData(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.BackLogo),
            ),
          ),
          child: Image.asset(Assets.SmallLogo2x),
        ));
  }

  Future<void> handleData(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    SharedPreferences saveData = await SharedPreferences.getInstance();
    if (saveData.containsKey("username")) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(App_Routes.home, (route) => false);
    } else {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(App_Routes.onboarding, (route) => false);
    }
  }
}
