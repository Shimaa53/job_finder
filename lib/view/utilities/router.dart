
import 'package:flutter/material.dart';
import 'package:job_finder/view/pages/complete_profile/education.dart';
import 'package:job_finder/view/pages/complete_profile/experience.dart';
import 'package:job_finder/view/pages/profile/change_password.dart';
import 'package:job_finder/view/pages/profile/email_address.dart';
import 'package:job_finder/view/pages/profile/help.dart';
import 'package:job_finder/view/pages/profile/phone_number.dart';
import 'package:job_finder/view/pages/profile/terms.dart';
import 'package:job_finder/view/pages/profile/verification.dart';
import 'package:job_finder/view/utilities/routes.dart';
import '../pages/apply_job/job_apply.dart';
import '../pages/apply_job/job_details.dart';
import '../pages/boarding/boarding_screen.dart';
import '../pages/complete_profile/complete_profile.dart';
import '../pages/create_account/account_ready.dart';
import '../pages/create_account/location.dart';
import '../pages/create_account/register_screen.dart';
import '../pages/create_account/type_work.dart';
import '../pages/forget_password/New_password_screen.dart';
import '../pages/forget_password/check_email_screen.dart';
import '../pages/forget_password/password_success.dart';
import '../pages/boarding/splash_screen.dart';
import '../pages/apply_job/data_successfully.dart';
import '../pages/forget_password/reset_password_screen.dart';
import '../pages/home/bottom_Screen.dart';
import '../pages/home/home_screen.dart';
import '../pages/home/search_screen.dart';
import '../pages/home/select_job.dart';
import '../pages/login/login_screen.dart';
import '../pages/messages/conversation.dart';
import '../pages/messages/message_screen.dart';
import '../pages/profile/edit_profile.dart';
import '../pages/profile/language.dart';
import '../pages/profile/notification_profile.dart';
import '../pages/profile/portfolio.dart';
import '../pages/profile/privacy.dart';
import '../pages/profile/profile_screen.dart';
import '../pages/profile/security.dart';
import '../pages/saved/notification_screen.dart';
import '../pages/saved/saved_screen.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.splashPageRoute:
      return MaterialPageRoute(
          builder: (_) => const SplashScreen(), settings: routeSettings);
    case AppRoutes.onBoardingRoute:
      return MaterialPageRoute(
        builder: (_) =>  OnBoardingScreen(),
        settings: routeSettings,
      );
    case AppRoutes.loginPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  LoginScreen(),
        settings: routeSettings,
      );
    case AppRoutes.registerPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  RegisterScreen(),
        settings: routeSettings,
      );
    case AppRoutes.resetPasswordPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  ResetPassword(),
        settings: routeSettings,
      );

    case AppRoutes.checkEmailPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  CheckEmail(),
        settings: routeSettings,
      );

    case AppRoutes.newPasswordPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  NewPassword(),
        settings: routeSettings,
      );

    case AppRoutes.passwordSuccessPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  PasswordSuccess(),
        settings: routeSettings,
      );

    case AppRoutes.typeWorkPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  TypeWork(),
        settings: routeSettings,
      );

    case AppRoutes.locationPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  Location(),
        settings: routeSettings,
      );

    case AppRoutes.accountReadyPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  AccountReady(),
        settings: routeSettings,
      );
    case AppRoutes.bottomPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  BottomScreen(),
        settings: routeSettings,
      );

    case AppRoutes.searchPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  SearchScreen(),
        settings: routeSettings,
      );


case AppRoutes.selectJobPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  SelectJob(),
        settings: routeSettings,
      );


case AppRoutes.jobDetailsPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  JobDetails(),
        settings: routeSettings,
      );

case AppRoutes.applyJobPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  ApplyJob(),
        settings: routeSettings,
      );


case AppRoutes.dataSuccessPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  DataSuccessfully(),
        settings: routeSettings,
      );


case AppRoutes.savedPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  SavedScreen(),
        settings: routeSettings,
      );


case AppRoutes.notificationPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  NotificationScreen(),
        settings: routeSettings,
      );


case AppRoutes.messagePageRoute:
      return MaterialPageRoute(
        builder: (_) =>  MessageScreen(),
        settings: routeSettings,
      );


case AppRoutes.chatPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  ChatScreen(),
        settings: routeSettings,
      );


case AppRoutes.profilePageRoute:
      return MaterialPageRoute(
        builder: (_) =>  ProfileScreen(),
        settings: routeSettings,
      );


 case AppRoutes.editPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  EditScreen(),
        settings: routeSettings,
      );


    case AppRoutes.portfolioPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  Portfolio(),
        settings: routeSettings,
      );



    case AppRoutes.languagePageRoute:
      return MaterialPageRoute(
        builder: (_) =>  Language(),
        settings: routeSettings,
      );


 case AppRoutes.notificationProfilePageRoute:
      return MaterialPageRoute(
        builder: (_) =>  NotificationProfile(),
        settings: routeSettings,
      );


 case AppRoutes.securityPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  Security(),
        settings: routeSettings,
      );


 case AppRoutes.emailAddressPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  EmailAddress(),
        settings: routeSettings,
      );


 case AppRoutes.phoneNumberPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  PhoneNumber(),
        settings: routeSettings,
      );


 case AppRoutes.changePasswordPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  ChangePassword(),
        settings: routeSettings,
      );


 case AppRoutes.verificationPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  Verification(),
        settings: routeSettings,
      );


 case AppRoutes.helpPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  HelpScreen(),
        settings: routeSettings,
      );


 case AppRoutes.termsPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  TermsScreen(),
        settings: routeSettings,
      );


 case AppRoutes.privacyPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  PrivacyScreen(),
        settings: routeSettings,
      );


 case AppRoutes.completeProfilePageRoute:
      return MaterialPageRoute(
        builder: (_) =>  CompleteProfile(),
        settings: routeSettings,
      );


 case AppRoutes.educationPageRoute:
      return MaterialPageRoute(
        builder: (_) =>  Education(),
        settings: routeSettings,
      );


 case AppRoutes.experiencePageRoute:
      return MaterialPageRoute(
        builder: (_) =>  Experience(),
        settings: routeSettings,
      );


   case AppRoutes.homePageRoute:
  default: return MaterialPageRoute(
  builder: (_) =>  HomeScreen(),
  settings: routeSettings,

  );


  }
}
