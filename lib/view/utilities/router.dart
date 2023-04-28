
import 'package:flutter/material.dart';
import 'package:jop_finder/view/pages/forget_password/New_password_screen.dart';
import 'package:jop_finder/view/pages/home/bottom_Screen.dart';
import 'package:jop_finder/view/pages/home/home_screen.dart';
import 'package:jop_finder/view/pages/home/search_screen.dart';
import 'package:jop_finder/view/pages/login/login_screen.dart';
import 'package:jop_finder/view/pages/create_account/register_screen.dart';
import 'package:jop_finder/view/pages/forget_password/reset_password_screen.dart';
import 'package:jop_finder/view/utilities/routes.dart';

import '../pages/apply_job/job_apply.dart';
import '../pages/apply_job/job_details.dart';
import '../pages/boarding/boarding_screen.dart';
import '../pages/create_account/account_ready.dart';
import '../pages/create_account/location.dart';
import '../pages/create_account/type_work.dart';
import '../pages/forget_password/check_email_screen.dart';
import '../pages/forget_password/password_success.dart';
import '../pages/boarding/splash_screen.dart';
import '../pages/apply_job/data_successfully.dart';
import '../pages/home/select_job.dart';
import '../pages/messages/conversation.dart';
import '../pages/messages/message_screen.dart';
import '../pages/profile/profile_screen.dart';
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


    case AppRoutes.homePageRoute:
  default: return MaterialPageRoute(
  builder: (_) =>  HomeScreen(),
  settings: routeSettings,

  );


  }
}
