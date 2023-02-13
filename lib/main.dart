import 'package:amit_project/core/app_routes.dart';
import 'package:amit_project/screens/OnBoarding/provider/OnBoardingProvider.dart';
import 'package:amit_project/screens/SplashScreen/provider/SplashProvider.dart';
import 'package:amit_project/screens/user_handel/create%20account/providers/create_account_provider.dart';
import 'package:amit_project/screens/user_handel/login/provider/LoginProvider.dart';
import 'package:amit_project/screens/user_handel/reset%20password/provider/reset_password_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, DeviceType deviceType) {
      print(orientation);
      return MultiProvider(
        providers: [
          ListenableProvider<SplashProvider>(create: (_) => SplashProvider()),
          ListenableProvider<OnBoardingProvider>(
              create: (_) => OnBoardingProvider()),
          ListenableProvider<LoginProvider>(create: (_) => LoginProvider()),
          ListenableProvider<ResetPasswordProvider>(
              create: (_) => ResetPasswordProvider()),
          ListenableProvider<CreateAccountProvider>(
              create: (_) => CreateAccountProvider()),
          // ListenableProvider<HomeProvider>(create: (_) => HomeProvider()),
        ],
        child: MaterialApp(
          title: "Job Finder",
          initialRoute: App_Routes.splash,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          onGenerateRoute: App_Routes.onGenerateRoute,
        ),
      );
    });
  }
}
