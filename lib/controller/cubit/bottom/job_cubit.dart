import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jop_finder/view/pages/apply_job/job_apply.dart';
import 'package:jop_finder/view/pages/create_account/account_ready.dart';
import 'package:jop_finder/view/pages/create_account/register_screen.dart';
import 'package:jop_finder/view/pages/create_account/type_work.dart';
import 'package:jop_finder/view/pages/home/home_screen.dart';
import 'package:jop_finder/view/pages/saved/saved_screen.dart';
import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/icon.dart';

import '../../../view/pages/messages/message_screen.dart';

part 'job_state.dart';

class JobCubit extends Cubit<JobState> {
  JobCubit() : super(JobInitial());
  static JobCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;

  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(icon:AppIcons.home,label: AppString.home),
    BottomNavigationBarItem(icon:AppIcons.message ,label: AppString.messages),
    BottomNavigationBarItem(icon:AppIcons.applied,label: AppString.applied),
    BottomNavigationBarItem(icon:AppIcons.saved,label:AppString.saved ),
    BottomNavigationBarItem(icon:AppIcons.userName,label: AppString.profile),

  ];

  List<Widget>screens=[
    HomeScreen(),
    MessageScreen(),
    ApplyJob(),
    SavedScreen(),
    SavedScreen(),

  ];

  void changeIndex(int index){
    currentIndex=index;
    emit(ChangeBottomNavigation());
  }

  //
  static List<String>recentSearch=[
    AppString.juniorUiDesign,
    AppString.juniorUxDesign,
    AppString.productDesign,
    AppString.projectManager,
    AppString.uiDesigner,
    AppString.FEDevelper
  ];

  static List<String>popularSearch=[
    AppString.uiDesigner,
    AppString.projectManager,
    AppString.productDesign,
    AppString.uxDesigner,
    AppString.FEDevelper
  ];
}