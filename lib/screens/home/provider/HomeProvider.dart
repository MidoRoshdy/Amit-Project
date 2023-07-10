import 'dart:convert';

import 'package:amit_project/screens/home/components/Applied/components/active.dart';
import 'package:amit_project/screens/home/components/Applied/components/rejected.dart';
import 'package:amit_project/screens/home/components/home1/Home_1.dart';
import 'package:amit_project/screens/home/provider/HomeState.dart';
import 'package:amit_project/screens/user_handel/login/provider/LoginState.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/api_routes.dart';
import '../../../core/enum.dart';
import '../../Job/job details/components/Company.dart';
import '../../Job/job details/components/Discrption.dart';
import '../../Job/job details/components/People.dart';
import '../components/saved/Saved.dart';
import '../components/Applied/applied.dart';
import '../components/message/message.dart';
import '../components/profile/profile.dart';

class HomeProvider extends ChangeNotifier {
  HomeState state = HomeState();
  LoginState loginState = LoginState();

  void init() {
    loadIconSuggest();
    loadIconRecent();
    getUsernameValue();
    fetchSuggestedData();
    fetchJobsData();
    notifyListeners();
  }

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

  Future<void> addFavorite(jobId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    String? id = sharedPreferences.getString("idValue");

    var response = await http.post(Uri.parse(ApiRoutes.addFavouriteUrl), body: {
      "user_id": "$id",
      "job_id": "$jobId",
    }, headers: {
      'Authorization': 'Bearer $token'
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> addFavorite = Map<String, dynamic>.from(data);

      print("addFavorite: $addFavorite");
    } else {
      print("addFavorite status: ${response.statusCode}");
    }
  }

  Future<void> deleteFavorite(jobId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    String? id = sharedPreferences.getString("idValue");

    var response =
        await http.delete(Uri.parse(ApiRoutes.deleteFavouriteUrl), body: {
      "user_id": "$id",
      "job_id": "$jobId",
    }, headers: {
      'Authorization': 'Bearer $token'
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print("data delete: $data");
      print("delete status: ${response.statusCode}");
    } else {
      print("delete status: ${response.statusCode}");
    }
  }

  Future<void> saveIcon(int index, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('icon$index', value);
  }

  Future<void> loadIconSuggest() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<bool?> icons = [];
    for (int i = 0; i < 10; i++) {
      bool? icon = prefs.getBool('icon$i');
      icons.add(icon ?? false);
    }
    state.iconSuggest = icons;
    notifyListeners();
  }

  Future<void> loadIconRecent() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<bool?> icons = [];
    for (int i = 0; i < 10; i++) {
      bool? icon = prefs.getBool('icon$i');
      icons.add(icon ?? false);
    }
    state.iconRecent = icons;
    notifyListeners();
  }

  Future<void> fetchSuggestedData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    print("token: $token");

    final response = await http.get(Uri.parse(ApiRoutes.SuggestedjobUrl),
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> suggestList = Map<String, dynamic>.from(data);

      List<Map> newResults = [];

      for (int i = 0; i < suggestList.length; i++) {
        newResults.add(suggestList["data"][i]);
      }
      state.suggested = newResults;
      notifyListeners();
    }
  }

  Future<void> fetchJobsData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    final response = await http.get(Uri.parse(ApiRoutes.ShowJobsUrl),
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> suggestList = Map<String, dynamic>.from(data);

      List<Map> newResults = [];

      for (int i = 0; i < suggestList.length; i++) {
        newResults.add(suggestList["data"][i]);
      }
      state.jobs = newResults;
    }
  }

  getUsernameValue() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.username = (sharedPreferences.getString("usernameValue") ?? "");
  }

  onTopSuggestSaveIcon(i, context) {
    if (state.iconSuggest[i] == false) {
      state.iconSuggest[i] = true;
      saveIcon(i, true);
      addFavorite(state.suggested[i]["id"]);
      notifyListeners();
    } else {
      state.iconSuggest[i] = false;
      saveIcon(i, false);
      deleteFavorite(state.suggested[i]["id"]);
      notifyListeners();
    }
  }

  onTopRecentSaveIcon(i, context) {
    if (state.iconRecent[i] == false) {
      state.iconRecent[i] = true;
      saveIcon(i, true);
      addFavorite(state.jobs[i]["id"]);
      notifyListeners();
    } else {
      state.iconRecent[i] = false;
      saveIcon(i, false);
      deleteFavorite(state.jobs[i]["id"]);
      notifyListeners();
    }
  }
}
