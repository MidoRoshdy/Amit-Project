import 'package:amit_project/screens/home/components/profile/provider/profilestate.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/app_routes.dart';
import '../../../../user_handel/login/provider/LoginState.dart';

class ProfileProvider extends ChangeNotifier {
  ProfileState state = ProfileState();
  LoginState states = LoginState();

  void onchange_deletedata(BuildContext context) async {
    SharedPreferences SavedData = await SharedPreferences.getInstance();
    var obtainedusername = SavedData.remove("username");
    var obtainedpassword = SavedData.remove("password");
    Navigator.of(context)
        .pushNamedAndRemoveUntil(App_Routes.login, (route) => false);
    notifyListeners();
    print("removed");
  }

  void onChangeRememberMe(bool? value) async {
    state.checkbox = value!;
  }
}
