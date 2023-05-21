import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../model/profile_model.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../custom_widget/default_text.dart';

Widget profile(ProfileModel profile,BuildContext context)=>Column(
  children: [
    buildSizedBox(height: 1.3.h,),
        Row(

      children: [

        CircleAvatar(

          backgroundColor: AppColor.babyblue1,

          child: profile.icon,foregroundColor: AppColor.blue,),

        buildSizedBox(width: 3.w,),

        DefaultText(text:profile.text,fontSize: 11.sp,

          color: AppColor.darkBlue,

        ),

        buildSpacer(),

        AppIcons.arrowForward

      ],

    ),
    buildSizedBox(height: 1.3.h,),

  ],
);
