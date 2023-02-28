import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class JobAppliedState {
  //! controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  //! errors
  String? nameErrorMessage;
  String? emailErrorMessage;

  //!variables
  String? name;
  String? email;
  PhoneNumber? phoneNumber;
}
