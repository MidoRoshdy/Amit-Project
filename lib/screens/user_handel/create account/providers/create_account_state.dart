import 'package:amit_project/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/enum.dart';

class CreateAccountState {
  //! vars
  String? name;
  String? email;
  String? password;

  //! controllers
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //! errors
  String? usernameErrorMessage;
  String? emailErrorMessage;
  String? passwordErrorMessage;

  //! bools
  bool hidePass = true;

  //! categories
  List<Map<String, dynamic>> categories = [
    {"icon": const Icon(Iconsax.bezier4), "name": "UI/UX Designer"},
    {"icon": const Icon(Iconsax.pen_tool4), "name": "Illustrator Designer"},
    {"icon": const Icon(Iconsax.code4), "name": "Developer"},
    {"icon": const Icon(Iconsax.graph4), "name": "Management"},
    {"icon": const Icon(Iconsax.graph4), "name": "Management"},
    {
      "icon": const Icon(Iconsax.monitor_mobbile4),
      "name": "Information Technology"
    },
    {"icon": const Icon(Iconsax.cloud_add4), "name": "Research and Analytics"}
  ];

  List<Map<String, dynamic>> selectedCategories = [];

  //! countries
  Map<String, Map<String, dynamic>> countries = {
    "argentina": {"name": "Argentina", "image": Assets.argentina},
    "brazil": {"name": "Brazil", "image": Assets.brazil},
    "canada": {"name": "Canada", "image": Assets.canada},
    "china": {"name": "China", "image": Assets.china},
    "india": {"name": "India", "image": Assets.india},
    "indonesia": {"name": "Indonesia", "image": Assets.indonesia},
    "malaysia": {"name": "Malaysia", "image": Assets.malaysia},
    "philiphenes": {"name": "Philiphenes", "image": Assets.philiphenes},
    "poland": {"name": "Poland", "image": Assets.poland},
    "saudi": {"name": "Saudi Arabia", "image": Assets.saudi},
    "singapore": {"name": "Singapore", "image": Assets.singapore},
    "vietnam": {"name": "Vietnam", "image": Assets.vietnam},
    "us": {"name": "United States", "image": Assets.us},
  };

  Map<String, Map<String, dynamic>> selectedCountries = {};

  ScreenStates states = ScreenStates.init;
}
