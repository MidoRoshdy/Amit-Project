import 'package:amit_project/screens/home/components/Applied/components/active.dart';
import 'package:amit_project/screens/home/components/Applied/components/rejected.dart';
import 'package:amit_project/screens/home/components/Home_1.dart';
import 'package:amit_project/screens/home/provider/HomeState.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/enum.dart';
import '../../Job/job details/components/Company.dart';
import '../../Job/job details/components/Discrption.dart';
import '../../Job/job details/components/People.dart';
import '../components/saved/Saved.dart';
import '../components/Applied/applied.dart';
import '../components/message.dart';
import '../components/profile/profile.dart';

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

  Widget chosenJobDetailsSection() {
    switch (state.selectedJobDetailsSection) {
      case SelectedJobDetailsSection.description:
        return const JopDiscription();
      case SelectedJobDetailsSection.company:
        return const JopCompany();
      case SelectedJobDetailsSection.people:
        return const JobPeople();
    }
  }

  Widget chosenJobAppliedSection() {
    switch (state.selectedAppliedSection) {
      case SelectedJobAppliedSection.Active:
        return const ActiveJob();
      case SelectedJobAppliedSection.Rejected:
        return const RejectedJob();
    }
  }
}
