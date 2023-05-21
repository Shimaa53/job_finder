import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../custom_widget/default_text.dart';
import '../../utilities/color.dart';
List<String>typeOfWork=[
  AppString.sUxDesign,
  AppString.sUiDesign,
  AppString.graphicDesigner,
  AppString.FEDevelper

];

Widget typeWork(int index)=>Container(
    height: 10.h,
    padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.white)

    ),
    child:Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(
              text:typeOfWork[index] ,
              color: AppColor.darkBlue,
              fontWeight: FontWeight.w500,
              fontSize: 10.5.sp,
            ),
            buildSizedBox(height: 0.7.h,),
            DefaultText(
              text: AppString.email,
              color: AppColor.grey2,
            ),

          ],
        ),
        buildSpacer(),
        CircleAvatar(radius: 10,)
      ],
    )
);
