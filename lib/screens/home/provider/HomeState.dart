import 'package:flutter/material.dart';

import '../../../Data/Models/jobs/suggestedjob_model.dart';
import '../../../core/enum.dart';

class HomeState {
  //! enum navigation
  ChosenNavigationItem chosenNavigationItem = ChosenNavigationItem.home;

  //! controllers
  final TextEditingController searchController = TextEditingController();

  final PageController pageviewcontroller = PageController();

  SelectedJobDetailsSection selectedJobDetailsSection =
      SelectedJobDetailsSection.description;

  SelectedJobAppliedSection selectedAppliedSection =
      SelectedJobAppliedSection.Active;
  ScreenStates states = ScreenStates.init;

  //! variables
  late List<bool?> iconSuggest;
  late List<bool?> iconRecent;

  String result = "";
  bool isReset = false;
  bool isSelected = false;
  dynamic chosenItem;
  dynamic username;
  List<SugestModel?>? suggest;
  List<Map> suggested = [];
  List<Map> jobs = [];
  List<Map> favorites = [];
  List<Map> searchFilter = [];
  List<String> searchList = [];
  List<String> history = [];
  List<String> suggestions = [
    "UI/UX Designer",
    "Project Manager",
    "Product Designer",
    "UX Designer",
    "Front-End Developer"
  ];
  //! navigation index
  int navigationIndex = 0;

  LoadingState loadingState = LoadingState.initial;

  // late User profile;

  LoadingState savedLoadingState = LoadingState.initial;
}
