import 'dart:convert';
import 'dart:io';
import 'package:email_validator/email_validator.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:path/path.dart';

import 'package:amit_project/screens/home/components/profile/provider/profilestate.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../../../../Data/models/portfolio_models/get_portfolio_response_model.dart';
import '../../../../../Data/services/auth_services/profile_services.dart';
import '../../../../../Data/services/profile_services/portfolio_services.dart';
import '../../../../../Data/services/profile_services/profile_data_services.dart';
import '../../../../../core/api_routes.dart';
import '../../../../../core/app_routes.dart';
import '../../../../../core/enum.dart';
import '../../../../user_handel/login/provider/LoginState.dart';

class ProfileProvider extends ChangeNotifier {
  ProfileState state = ProfileState();
  LoginState states = LoginState();

  saveProfileEditing(context, bio, address, mobile) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    print("token: $token");
  }

  setUserData(name, bio, address, mobile) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("usernameValue", name);
    await sharedPreferences.setString("bioValue", bio);
    await sharedPreferences.setString("addressValue", address);
    await sharedPreferences.setString("mobileValue", mobile);
    notifyListeners();
  }

  Future<void> saveImageToPrefs(File image) async {}

  void onchange_deletedata(BuildContext context) async {
    SharedPreferences SavedData = await SharedPreferences.getInstance();
    // ignore: unused_local_variable
    var obtainedusername = SavedData.remove("username");
    // ignore: unused_local_variable
    var obtainedpassword = SavedData.remove("password");
    Navigator.of(context)
        .pushNamedAndRemoveUntil(App_Routes.login, (route) => false);
    notifyListeners();
    print("removed");
  }

  void onChangeRememberMe(bool? value) async {
    state.checkbox = value!;
  }

  Future<void> loadPorfolios() async {
    state.portfolioLoadingState = LoadingState.loading;
    notifyListeners();
    SharedPreferences shared = await SharedPreferences.getInstance();
    GetPorfolioResponseModel getPorfolioResponseModel =
        await PortfolioServices()
            .getPortfolio(shared.getString("id")!, shared.getString("token")!);
    state.portfolios = getPorfolioResponseModel.data;
    state.portfolioLoadingState = LoadingState.done;
    notifyListeners();
  }

  Future<void> fetchprofileData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    print("token: $token");

    final response = await http.get(Uri.parse(ApiRoutes.getProfile),
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> profilelist = Map<String, dynamic>.from(data);

      List<Map> newProfile = [];

      for (int i = 0; i < profilelist.length; i++) {
        newProfile.add(profilelist["data"][i]);
      }
      state.profile = newProfile;
      notifyListeners();
    }
  }

  void getUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.nameController.text =
        (sharedPreferences.getString("usernameValue") ?? "");
    state.bioController.text = (sharedPreferences.getString("bioValue") ?? "");
    state.addressController.text =
        (sharedPreferences.getString("addressValue") ?? "");
    state.mobileController.text =
        (sharedPreferences.getString("mobileValue") ?? "");
    state.aboutController.text =
        (sharedPreferences.getString("editAboutValue") ?? "");
    notifyListeners();
  }

  Future<void> getImage() async {
    final myfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    final image = File(myfile!.path);
    state.image = image;
    state.hasImage = true;
    notifyListeners();
  }

  void onTap(context) {
    saveProfileEditing(
      context,
      state.bioController.text,
      state.addressController.text,
      state.mobileController.text,
    );
    setUserData(
      state.nameController.text,
      state.bioController.text,
      state.addressController.text,
      state.mobileController.text,
    );
    saveImageToPrefs(state.image);
  }

///////////////////////////////////////////
  void onNameChange(String value) {
    value.isEmpty
        ? state.nameErrorMessage = "Name is required"
        : state.nameErrorMessage = null;
    state.name = value;
    notifyListeners();
  }

  void onBioChange(String value) {
    value.isEmpty
        ? state.bioErrorMessage = "Bio is required"
        : state.bioErrorMessage = null;
    state.bio = value;
    notifyListeners();
  }

  void onAddressChange(String value) {
    value.isEmpty
        ? state.addressErrorMessage = "Address is required"
        : state.addressErrorMessage = null;
    state.address = value;
    notifyListeners();
  }

  validate() {
    return state.name != null &&
        state.bio != null &&
        state.address != null &&
        state.nameErrorMessage == null &&
        state.bioErrorMessage == null &&
        state.addressErrorMessage == null;
  }

  Future<void> saveProfile(BuildContext context) async {
    state.detailsLoadingState = LoadingState.loading;
    notifyListeners();
    SharedPreferences shared = await SharedPreferences.getInstance();
    await ProfileDataServices().editBioAndData(shared.getString("id")!,
        shared.getString("token")!, state.bio!, state.address!, "0121212120");
    await ProfileServices().updateName(
        shared.getString("id")!, shared.getString("token")!, state.name!);
    state.bioController.clear();
    state.addressController.clear();
    state.nameController.clear();
    state.name = null;
    state.bio = null;
    state.address = null;
    state.detailsLoadingState = LoadingState.done;
    notifyListeners();
    Navigator.of(context).pop();
  }

  Future<void> addPortfolio() async {
    state.filePicking = FilePicking.choosing;
    notifyListeners();
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      state.cvFile = File(result.files.single.path!);
      state.filePicking = FilePicking.done;
      notifyListeners();
    } else {
      state.filePicking = FilePicking.initial;
      notifyListeners();
    }
  }

  void fileRemoved() {
    state.cvFile = null;
    state.filePicking = FilePicking.initial;
    notifyListeners();
  }

  Future<void> uploadPortfolio() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    await PortfolioServices().addPortfolio(basename(state.cvFile!.path),
        state.cvFile!, shared.getString("id")!, shared.getString("token")!);
    state.cvFile = null;
    state.filePicking = FilePicking.initial;
    loadPorfolios();
    notifyListeners();
  }

  void onPortfolioNameChange(String value) {
    value.isEmpty
        ? state.portfoioNameErrorMessage = "Portfolio name is required"
        : state.portfoioNameErrorMessage = null;
    state.portfolioName = value;
    notifyListeners();
  }

  validatePortfolioName() {
    return state.portfolioName != null &&
        state.portfoioNameErrorMessage == null;
  }

  Future<void> updatePortfolio(int index) async {
    state.portfolioLoadingState = LoadingState.loading;
    notifyListeners();
    SharedPreferences shared = await SharedPreferences.getInstance();
    await PortfolioServices().editPortfolio(
        state.portfolioName!,
        state.portfolios[index].cvFile,
        shared.getString("id")!,
        shared.getString("token")!);
    loadPorfolios();
    state.portfolioLoadingState = LoadingState.done;
    notifyListeners();
  }

  Future<void> deletePortfolio() async {
    state.portfolioLoadingState = LoadingState.loading;
    notifyListeners();
    SharedPreferences shared = await SharedPreferences.getInstance();
    await PortfolioServices()
        .deletePortfolio(shared.getString("id")!, shared.getString("token")!);
    loadPorfolios();
    state.portfolioLoadingState = LoadingState.done;
    notifyListeners();
  }

  void jobSearchAlertChange(bool value) {
    state.jobSearchAlert = value;
    notifyListeners();
  }

  void jobApplicationUpdateChange(bool value) {
    state.jobApplicationUpdate = value;
    notifyListeners();
  }

  void jobApplicationRemindersChange(bool value) {
    state.jobApplicationReminders = value;
    notifyListeners();
  }

  void interestedInJobsChange(bool value) {
    state.interestedInJobs = value;
    notifyListeners();
  }

  void jobSeekerUpdatesChange(bool value) {
    state.jobSeekerUpdates = value;
    notifyListeners();
  }

  void showProfileChange(bool value) {
    state.showProfile = value;
    notifyListeners();
  }

  void allMessagesChange(bool value) {
    state.allMessages = value;
    notifyListeners();
  }

  void messageNudgesChange(bool value) {
    state.messageNudges = value;
    notifyListeners();
  }

  void onEmailChange(String value) {
    value.isEmpty
        ? state.emailErrorMessage = "You must enter an e-mail"
        : EmailValidator.validate(value)
            ? state.emailErrorMessage = null
            : state.emailErrorMessage = "Enter a valid e-mail";
    state.email = value;
    notifyListeners();
  }

  bool checkEmail() {
    return state.email != null && state.emailErrorMessage == null;
  }

  void saveEmail(BuildContext context) {
    Navigator.of(context).pop();
  }

  void onPhoneChange(PhoneNumber value) {
    value.phoneNumber == value.dialCode
        ? state.phoneErrorMessgae = "Phone is required"
        : state.phoneErrorMessgae = null;
    state.phone = value;
    notifyListeners();
  }

  void phoneToResetPassChange(bool value) {
    state.phoneToResetPass = value;
    notifyListeners();
  }

  bool checkPhone() {
    return state.phone != null && state.phoneErrorMessgae == null;
  }

  void savePhone(BuildContext context) {
    Navigator.of(context).pop();
  }
}
