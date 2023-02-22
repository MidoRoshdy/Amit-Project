import 'package:amit_project/screens/home/components/Home_1.dart';
import 'package:amit_project/screens/home/provider/HomeState.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/enum.dart';
import '../components/Saved.dart';
import '../components/applied.dart';
import '../components/message.dart';
import '../components/profile.dart';

class HomeProvider extends ChangeNotifier {
  HomeState state = HomeState();

  void onNavigationTap(int value) {
    switch (value) {
      case 0:
        state.chosenNavigationItem = ChosenNavigationItem.home;
        break;
      case 1:
        state.chosenNavigationItem = ChosenNavigationItem.messages;
        break;
      case 2:
        state.chosenNavigationItem = ChosenNavigationItem.applied;
        break;
      case 3:
        state.chosenNavigationItem = ChosenNavigationItem.saved;
        break;
      case 4:
        state.chosenNavigationItem = ChosenNavigationItem.profile;
        break;
    }
    notifyListeners();
  }

  Widget chosenPage() {
    switch (state.chosenNavigationItem) {
      case ChosenNavigationItem.home:
        return const HomePage();
      case ChosenNavigationItem.messages:
        return const Messages();
      case ChosenNavigationItem.applied:
        return const Applied();
      case ChosenNavigationItem.saved:
        return const saved();
      case ChosenNavigationItem.profile:
        return const Profile();
      default:
        return const SizedBox();
    }
  }
}
