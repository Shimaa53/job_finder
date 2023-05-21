import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../custom_widget/default_text.dart';

Widget description()=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    buildSizedBox(height: 3.h,),
    DefaultText(
      text: AppString.jobDescription,
      color: AppColor.darkBlue,
      fontWeight: FontWeight.w500,
      fontSize: 10.5.sp,
    ),
    buildSizedBox(height: 2.h,),
    DefaultText(
      text: AppString.tDescription,
      color: AppColor.grey2,
      height: 1.4,
    ),
    buildSizedBox(height: 3.h,),
    DefaultText(
      text: AppString.skillRequired,
      color: AppColor.darkBlue,
      fontWeight: FontWeight.w500,
      fontSize: 10.5.sp,
    ),
    buildSizedBox(height: 2.h,),
    DefaultText(
      text: AppString.skillDescription,
      color: AppColor.grey2,
      height:1.4,
    ),
  ],);