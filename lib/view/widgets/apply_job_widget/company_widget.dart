import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../custom_widget/default_text.dart';

Widget company()=> SingleChildScrollView(
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildSizedBox(height: 3.h,),
      DefaultText(
        text: AppString.contactUs,
        color: AppColor.darkBlue,
        fontWeight: FontWeight.w500,
        fontSize: 10.5.sp,
      ),
      buildSizedBox(height: 2.h,),
      Row(
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.white)
  
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      text: AppString.email,
                      color: AppColor.grey2,
                    ),
                    buildSizedBox(height: 0.7.h,),
                    DefaultText(
                      text: AppString.contactEmail,
                      color: AppColor.darkBlue,
                      fontWeight: FontWeight.w500,
                      fontSize: 10.5.sp,
                    ),
                  ],
                )
            ),
          ),
          buildSizedBox(width: 3.w,),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColor.white)
              ),
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultText(
                      text: AppString.website,
                      color: AppColor.grey2,
                    ),
                    buildSizedBox(height: 0.7.h,),
                    DefaultText(
                      text: AppString.contactWeb,
                      color: AppColor.darkBlue,
                      fontWeight: FontWeight.w500,
                      fontSize: 10.5.sp,
                    ),
                  ]
              ),
            ),
  
  
  
          ),
  
        ],),
      buildSizedBox(height: 3.h,),
      DefaultText(
        text: AppString.aboutCompany,
        color: AppColor.darkBlue,
        fontWeight: FontWeight.w500,
        fontSize: 10.5.sp,
      ),
      buildSizedBox(height: 2.h,),
      DefaultText(
        text: AppString.descCompany,
        color: AppColor.grey2,
        height:1.4,
      ),
  
    ],
  ),
);