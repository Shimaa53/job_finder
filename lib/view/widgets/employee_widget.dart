import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../model/employee_model.dart';
import '../utilities/app_string.dart';
import '../utilities/assets.dart';
import '../utilities/color.dart';
import '../utilities/icon.dart';
import 'default_text.dart';

Widget Employee(EmployeeModel employee)=>Row(
  children: [
    Image.asset(employee.image,height: 5.h,width: 9.5.w,),
    SizedBox(width: 2.w,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultText(
          text: employee.name,
          color: AppColor.darkBlue,
          fontWeight: FontWeight.w500,
          fontSize: 10.5.sp,
        ),
        SizedBox(height: 1.h,),
        DefaultText(
          text:'${employee.job} at ${AppString.twitter}',
          color: AppColor.grey2,
        ),
      ],
    ),
    Spacer(),
    Column(
      children: [
        DefaultText(
          text: AppString.workDuring,
          color: AppColor.grey2,
        ),
        SizedBox(height: 1.h,),
        DefaultText(
          text: employee.year,
          color: AppColor.blue,
        ),
      ],
    ),

  ],
);
