import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../view/pages/apply_job/job_apply.dart';
import '../../../view/pages/home/home_screen.dart';
import '../../../view/pages/messages/message_screen.dart';
import '../../../view/pages/saved/saved_screen.dart';
import '../../../view/utilities/app_string.dart';
import '../../../view/utilities/color.dart';
import '../../../view/utilities/icon.dart';

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


  static List<String>jobNotification=[
    AppString.searchAlert,
    AppString.jobAppUpdate,
    AppString.jobAppReminder,
    AppString.jobInterested,
    AppString.jobSeeker
  ];

  static List<String>otherNotification=[
    AppString.showProfile,
    AppString.allMessage,
    AppString.messageNudges,
  ];

  static List<String>accountAccess=[
    AppString.emailAddress,
    AppString.phoneNumber,
    AppString.changePassword,
    AppString.stepsVerification,
    AppString.faceID
  ];

  // void onChangedSwitch(bool value){
  //   bool searchAlert=true;
  //   bool appUpdate=true;
  //   bool appReminder=false;
  //   bool jobInterested=true;
  //   bool jobSeeker=false;
  //   bool showProfile=true;
  //   bool allMessage=true;
  //   bool messageNudges=true;
  //
  //   emit(ChangeSwitch());
  // }

  //ChangePasswordVisibility
  Icon icon=AppIcons.eyeOff;
  bool obScure=true;
  void visibility() {
      obScure=!obScure;
      icon=obScure?AppIcons.eyeOff:AppIcons.eye;
    emit(ChangeVisibility());
  }

  //checkBox in login
  bool? isChecked=false;
void CheckBox(newValue){
  isChecked=newValue;
  emit(CheckBoxRemember());
}

//   //ChangeColorButton
//   Color color=AppColor.white;
//   bool onPressed=false;
// void changeColor(){
//   onPressed=!onPressed;
//   color=onPressed?AppColor.white:AppColor.blue;
//   emit(ChangeColorButton());
//
// }
}
