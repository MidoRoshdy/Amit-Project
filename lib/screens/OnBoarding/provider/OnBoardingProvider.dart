import 'package:amit_project/screens/OnBoarding/provider/OnBoardingState.dart';
import 'package:flutter/cupertino.dart';

class OnBoardingProvider extends ChangeNotifier {
  OnBoardingState state = OnBoardingState();

  // Future<void> onBoardFinish(context) async {
  //   SharedPreferences shared = await SharedPreferences.getInstance();
  //   shared.setBool("OnBoarding", true);
  //   if (context.mounted) {
  //     Navigator.of(context)
  //         .pushNamedAndRemoveUntil(App_Routes.home, (route) => false);
  //     Navigator.of(context).pushNamed(App_Routes.create_account);
  //   }
  // }
}
