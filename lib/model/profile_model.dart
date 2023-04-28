import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/assets.dart';

import '../view/utilities/icon.dart';

class ProfileModel{
  final Icon icon;
  final String text;

  ProfileModel({required this.icon, required this.text});

  static List <ProfileModel> profile=[
    ProfileModel(icon: AppIcons.userName, text: AppString.editProfile),
    ProfileModel(icon: AppIcons.security, text: AppString.portfolioP),
    ProfileModel(icon: AppIcons.language, text: AppString.language),
    ProfileModel(icon: AppIcons.notification, text: AppString.notification),
    ProfileModel(icon: AppIcons.security, text: AppString.security),

  ];
}