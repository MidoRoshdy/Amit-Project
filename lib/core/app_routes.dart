import 'package:amit_project/screens/Job/job%20applied/components/UploadPortfolio.dart';
import 'package:amit_project/screens/Job/succsess%20job/succsessJob.dart';
import 'package:amit_project/screens/OnBoarding/OnBoarding.dart';
import 'package:amit_project/screens/SplashScreen/SplashScreen.dart';
import 'package:amit_project/screens/home/components/Applied/components/active.dart';
import 'package:amit_project/screens/home/components/Applied/components/rejected.dart';
import 'package:amit_project/screens/home/components/home1/Home_1.dart';
import 'package:amit_project/screens/home/components/message/components/sendmessage.dart';
import 'package:amit_project/screens/home/components/message/message.dart';
import 'package:amit_project/screens/home/components/notifications/components/empty_notifications.dart';
import 'package:amit_project/screens/home/components/notifications/notifications.dart';
import 'package:amit_project/screens/home/components/profile/components/complete%20profile/completeprofile.dart';
import 'package:amit_project/screens/home/components/profile/components/complete%20profile/components/education.dart';
import 'package:amit_project/screens/home/components/profile/components/complete%20profile/components/experience.dart';
import 'package:amit_project/screens/home/components/profile/components/complete%20profile/components/personaldetails.dart';
import 'package:amit_project/screens/home/components/profile/components/general/editprofile.dart';
import 'package:amit_project/screens/home/components/profile/components/general/langaugeprofile.dart';
import 'package:amit_project/screens/home/components/profile/components/general/login&security/components/changepassword.dart';
import 'package:amit_project/screens/home/components/profile/components/general/login&security/components/emailaddress.dart';
import 'package:amit_project/screens/home/components/profile/components/general/login&security/components/phonenumber.dart';
import 'package:amit_project/screens/home/components/profile/components/general/login&security/components/verfications/components/verfi_page2.dart';
import 'package:amit_project/screens/home/components/profile/components/general/login&security/components/verfications/components/verfi_page3.dart';
import 'package:amit_project/screens/home/components/profile/components/general/login&security/components/verfications/components/verfi_page4.dart';
import 'package:amit_project/screens/home/components/profile/components/general/login&security/components/verfications/verfication.dart';
import 'package:amit_project/screens/home/components/profile/components/general/login&security/login&security.dart';
import 'package:amit_project/screens/home/components/profile/components/general/notificationprofile.dart';
import 'package:amit_project/screens/home/components/profile/components/general/portfolio.dart';
import 'package:amit_project/screens/home/components/profile/components/others/helpcenter.dart';
import 'package:amit_project/screens/home/components/profile/components/others/privacypolicy.dart';
import 'package:amit_project/screens/home/components/profile/components/others/termsandconditions.dart';
import 'package:amit_project/screens/home/components/profile/profile.dart';
import 'package:amit_project/screens/home/components/saved/components/empty_save.dart';
import 'package:amit_project/screens/home/home.dart';
import 'package:amit_project/screens/user_handel/create%20account/components/categories_screen.dart';
import 'package:amit_project/screens/user_handel/create%20account/components/countries_screen.dart';
import 'package:amit_project/screens/user_handel/create%20account/create_account.dart';
import 'package:amit_project/screens/user_handel/login/Login.dart';
import 'package:amit_project/screens/user_handel/reset%20password/components/email_sent_screen.dart';
import 'package:amit_project/screens/user_handel/reset%20password/components/new_password_screen.dart';
import 'package:amit_project/screens/user_handel/reset%20password/components/reset_success_screen.dart';
import 'package:amit_project/screens/user_handel/reset%20password/reset_password.dart';
import 'package:flutter/material.dart';

import '../screens/Job/job applied/Jobapplied.dart';
import '../screens/Job/job applied/components/TypeOfWork.dart';
import '../screens/OnBoarding/components/page2.dart';
import '../screens/OnBoarding/components/page3.dart';
import '../screens/Job/job details/JobDetails.dart';
import '../screens/user_handel/create account/components/creation_success_screen.dart';

class App_Routes {
  static const String splash = "/";
  //OnBoarding
  static const String onboarding = "onboarding";
  static const String page2 = "OnBoarding_page2";
  static const String page3 = "OnBoarding_page3";
//userhandel

  static const String login = "Login";

  //create account and choose categories and countries
  static const String create_account = "create_account";
  static const String categories = "categories";
  static const String countries = "CountryChoice";
  static const String createSuccessScreen = "createSuccessScreen";
//reset password and email send
  static const String reset_password = "reset_password";
  static const String emailSent = "emailSent";
  static const String chooseNewPass = "chooseNewPass";
  static const String resetSuccessScreen = "resetSuccessScreen";

  //homescreen
  static const String home = "home";
  static const String homepage = "homepage";
  static const String Jobdetails = "JobDetails";
  static const String Jobapplied = "JobApplied";
  static const String typeofwork = "TypeOfWork";
  static const String uploadportfolio = "UploadPortfolio";
  static const String succsessjob = "SuccsessJob";
  static const String emptysave = "emptysave";
  static const String notifications = "notifications";
  static const String emptynotifications = "emptynotifications";
  //profile
  static const String profile = "Profile";
  //General
  static const String editprofile = "EditProfile";
  static const String portfolio = "Portfolio";
  static const String langaugeprofile = "LangaugeProfile";
  static const String notificationsprofile = "notificationsprofile";
  static const String loginandsecurity = "loginandsecurity";
  //Login And Security
  static const String emailaddress = "emailaddress";
  static const String phonenumber = "phonenumber";
  static const String changepassword = "changepassword";
  static const String verfication = "verfication";
  static const String veri_page2 = "veri_page2";
  static const String veri_page3 = "veri_page3";
  static const String veri_page4 = "veri_page4";
  //others
  static const String helpcenter = "helpcenter";
  static const String privacypolicy = "privacypolicy";
  static const String termsandconditions = "termsandconditions";
  //applied job
  static const String activejob = "activejob";
  static const String rejectedjob = "rejectedjob";
  //complete profile
  static const String completeprofile = "completeprofile";
  static const String personaldetails = "personaldetails";
  static const String education = "education";
  static const String experience = "experience";
  //meassege
  static const String messages = "messages";
  static const String sendmassege = "SendMassege";

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );
      case onboarding:
        return MaterialPageRoute(
          builder: (context) {
            return OnBoarding();
          },
        );
      case page2:
        return MaterialPageRoute(
          builder: (context) {
            return OnBoarding_page2();
          },
        );
      case page3:
        return MaterialPageRoute(
          builder: (context) {
            return OnBoarding_page3();
          },
        );
      case login:
        return MaterialPageRoute(
          builder: (context) {
            return const Login();
          },
        );
      case create_account:
        return MaterialPageRoute(
          builder: (context) {
            return const CreateAccount();
          },
        );
      case reset_password:
        return MaterialPageRoute(
          builder: (context) {
            return const ResetPassword();
          },
        );
      case emailSent:
        return MaterialPageRoute(
          builder: (context) {
            return const EmailSentScreen();
          },
        );
      case resetSuccessScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const ResetSuccessScreen();
          },
        );
      case chooseNewPass:
        return MaterialPageRoute(
          builder: (context) {
            return const NewPasswordScreen();
          },
        );
      case categories:
        return MaterialPageRoute(
          builder: (context) => const CategoriesScreen(),
        );
      case countries:
        return MaterialPageRoute(
          builder: (context) => const CountriesScreen(),
        );
      case createSuccessScreen:
        return MaterialPageRoute(
          builder: (context) => const CreationSuccessScreen(),
        );
      case home:
        return MaterialPageRoute(
          builder: (context) {
            return const Home();
          },
        );
      case homepage:
        return MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        );
      case Jobdetails:
        return MaterialPageRoute(
          builder: (context) {
            return JobDetails();
          },
        );
      case Jobapplied:
        return MaterialPageRoute(
          builder: (context) {
            return const JobApplied();
          },
        );
      case typeofwork:
        return MaterialPageRoute(
          builder: (context) {
            return const TypeOfWork();
          },
        );
      case uploadportfolio:
        return MaterialPageRoute(
          builder: (context) {
            return const UploadPortfolio();
          },
        );
      case succsessjob:
        return MaterialPageRoute(
          builder: (context) {
            return const SuccsessJob();
          },
        );
      case notifications:
        return MaterialPageRoute(
          builder: (context) {
            return const Notifications();
          },
        );
      case emptysave:
        return MaterialPageRoute(
          builder: (context) {
            return const EmptySave();
          },
        );
      case emptynotifications:
        return MaterialPageRoute(
          builder: (context) {
            return const EmptyNotifications();
          },
        );
      case profile:
        return MaterialPageRoute(
          builder: (context) {
            return const Profile();
          },
        );
      case editprofile:
        return MaterialPageRoute(
          builder: (context) {
            return const EditProfile();
          },
        );
      case portfolio:
        return MaterialPageRoute(
          builder: (context) {
            return const Portfolio();
          },
        );
      case langaugeprofile:
        return MaterialPageRoute(
          builder: (context) {
            return const LangaugeProfile();
          },
        );
      case notificationsprofile:
        return MaterialPageRoute(
          builder: (context) {
            return const NotificationsProfile();
          },
        );
      case loginandsecurity:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginAndSecurity();
          },
        );
      case emailaddress:
        return MaterialPageRoute(
          builder: (context) {
            return const EmailAddress();
          },
        );
      case phonenumber:
        return MaterialPageRoute(
          builder: (context) {
            return const PhoneNumber();
          },
        );
      case changepassword:
        return MaterialPageRoute(
          builder: (context) {
            return const ChangePassword();
          },
        );
      case verfication:
        return MaterialPageRoute(
          builder: (context) {
            return const TwoStepVerficaton();
          },
        );
      case veri_page2:
        return MaterialPageRoute(
          builder: (context) {
            return const VerificationPage2();
          },
        );
      case veri_page3:
        return MaterialPageRoute(
          builder: (context) {
            return const VerificationPage3();
          },
        );
      case veri_page4:
        return MaterialPageRoute(
          builder: (context) {
            return const VerificationPage4();
          },
        );
      case helpcenter:
        return MaterialPageRoute(
          builder: (context) {
            return const HelpCenter();
          },
        );
      case privacypolicy:
        return MaterialPageRoute(
          builder: (context) {
            return const PrivacyPolicy();
          },
        );
      case termsandconditions:
        return MaterialPageRoute(
          builder: (context) {
            return const TermsAndConditions();
          },
        );
      case activejob:
        return MaterialPageRoute(
          builder: (context) {
            return const ActiveJob();
          },
        );
      case rejectedjob:
        return MaterialPageRoute(
          builder: (context) {
            return const RejectedJob();
          },
        );
      case completeprofile:
        return MaterialPageRoute(
          builder: (context) {
            return const CompleteProfile();
          },
        );
      case personaldetails:
        return MaterialPageRoute(
          builder: (context) {
            return const PersonalDetails();
          },
        );
      case education:
        return MaterialPageRoute(
          builder: (context) {
            return const Education();
          },
        );
      case experience:
        return MaterialPageRoute(
          builder: (context) {
            return const Experience();
          },
        );
      case messages:
        return MaterialPageRoute(
          builder: (context) {
            return const Messages();
          },
        );
      case sendmassege:
        return MaterialPageRoute(
          builder: (context) {
            return const SendMassege();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text("No route defined for ${setting.name}"),
              ),
            );
          },
        );
    }
  }
}

// case register:
//   return MaterialPageRoute(
//     builder: (context) {
//       return const Register();
//     },
//   );
// case stream:
//   return MaterialPageRoute(
//     builder: (context) {
//       return const Stream();
//     },
//   );
// case notes:
//   return MaterialPageRoute(
//     builder: (context) {
//       return const Notes();
//     },
//   );
// case addnote:
//   return MaterialPageRoute(
//     builder: (context) {
//       return AddNote();
//     },
//   );
