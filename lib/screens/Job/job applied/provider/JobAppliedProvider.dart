import 'package:amit_project/screens/Job/job%20applied/provider/JobAppliedState.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class JobAppliedProvider extends ChangeNotifier {
  JobAppliedState state = JobAppliedState();
  void onNameChange(String value) {
    value.isEmpty
        ? state.nameErrorMessage = "You must enter a username"
        : state.nameErrorMessage = null;
    state.name = value;
    notifyListeners();
  }

  void onEmailChange(String value) {
    value.isEmpty
        ? state.emailErrorMessage = "You must enter a mail"
        : EmailValidator.validate(value)
            ? state.emailErrorMessage = null
            : state.emailErrorMessage = "Enter a valid mail";
    state.email = value;
    notifyListeners();
  }

  void onPhoneNumberChange(PhoneNumber value) {
    state.phoneNumber = value;
    notifyListeners();
  }

  bool validateBiodata() {
    if (state.name != null &&
        state.email != null &&
        state.phoneNumber != null &&
        state.nameErrorMessage == null &&
        state.emailErrorMessage == null) {
      return true;
    } else {
      return false;
    }
  }
}
