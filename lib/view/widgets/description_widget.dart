import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../utilities/app_string.dart';
import '../utilities/color.dart';
import 'default_text.dart';

Widget Discription()=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 3.h,),
    DefaultText(
      text: AppString.jobDescription,
      color: AppColor.darkBlue,
      fontWeight: FontWeight.w500,
      fontSize: 10.5.sp,
    ),
    SizedBox(height: 2.h,),
    DefaultText(
      text: AppString.tDescription,
      color: AppColor.grey2,
      height: 1.4,
    ),
    SizedBox(height: 3.h,),
    DefaultText(
      text: AppString.skillRequired,
      color: AppColor.darkBlue,
      fontWeight: FontWeight.w500,
      fontSize: 10.5.sp,
    ),
    SizedBox(height: 2.h,),
    DefaultText(
      text: AppString.skillDescription,
      color: AppColor.grey2,
      height:1.4,
    ),
  ],);
