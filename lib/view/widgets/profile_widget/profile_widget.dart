import 'package:flutter/material.dart';
import 'package:jop_finder/model/profile_model.dart';
import 'package:jop_finder/view/utilities/routes.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../custom_widget/default_text.dart';
Widget profile(ProfileModel profile,BuildContext context)=>Column(
  children: [
    SizedBox(height: 1.3.h,),
        Row(

      children: [

        CircleAvatar(

          backgroundColor: AppColor.babyblue1,

          child: profile.icon,foregroundColor: AppColor.blue,),

        SizedBox(width: 3.w,),

        DefaultText(text:profile.text,fontSize: 11.sp,

          color: AppColor.darkBlue,

        ),

        Spacer(),

        AppIcons.arrowForward

      ],

    ),
    SizedBox(height: 1.3.h,),

  ],
);
