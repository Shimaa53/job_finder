import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../model/employee_model.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../custom_widget/default_text.dart';

Widget employee(EmployeeModel employee)=>Row(
  children: [
    Image.asset(employee.image,height: 5.h,width: 9.5.w,),
    buildSizedBox(width: 2.w,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultText(
          text: employee.name,
          color: AppColor.darkBlue,
          fontWeight: FontWeight.w500,
          fontSize: 10.5.sp,
        ),
        buildSizedBox(height: 1.h,),
        DefaultText(
          text:'${employee.job} at ${AppString.twitter}',
          color: AppColor.grey2,
        ),
      ],
    ),
    buildSpacer(),
    Column(
      children: [
        DefaultText(
          text: AppString.workDuring,
          color: AppColor.grey2,
        ),
        buildSizedBox(height: 1.h,),
        DefaultText(
          text: employee.year,
          color: AppColor.blue,
        ),
      ],
    ),

  ],
);
