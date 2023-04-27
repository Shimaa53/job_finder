import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utilities/app_string.dart';
import '../utilities/color.dart';
import '../utilities/icon.dart';
import '../widgets/default_text.dart';

Widget MessageSheet(BuildContext context)=>Container(
    height:MediaQuery.of(context).size.height*.4,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: AppColor.white0,
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 6.w,right: 6.w,top: 4.h,bottom: 4.h),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultText(text:AppString.msgFilter,fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: AppColor.darkBlue,
          ),
          SizedBox(height: 2.h,),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(color: AppColor.white)
              ),
              child: Row(
                children: [
                  DefaultText(text:AppString.unread,fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlue,
                  ),
                  Spacer(),
                  AppIcons.forward,
                ],
              ),
            ),
          ),
          SizedBox(height: 1.5.h,),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(color: AppColor.white)
              ),
              child: Row(
                children: [
                  DefaultText(text:AppString.spam,fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlue,
                  ),
                  Spacer(),
                  AppIcons.forward,
                ],
              ),
            ),
          ),
          SizedBox(height: 1.5.h,),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(color: AppColor.white)
              ),
              child: Row(
                children: [
                  DefaultText(text:AppString.archived,fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlue,
                  ),
                  Spacer(),
                  AppIcons.forward,
                ],
              ),
            ),
          ),

        ],
      ),
    ));