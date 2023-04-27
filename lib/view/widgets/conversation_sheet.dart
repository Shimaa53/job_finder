import 'package:flutter/material.dart';
import 'package:jop_finder/model/message_model.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:jop_finder/view/widgets/message_widget.dart';
import 'package:sizer/sizer.dart';

import '../utilities/app_string.dart';
import '../utilities/color.dart';
import '../utilities/icon.dart';
import '../widgets/default_text.dart';

Widget ConversationSheet(BuildContext context)=>Container(
  height:MediaQuery.of(context).size.height*0.7,
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
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                border: Border.all(color: AppColor.white)
            ),
            child: Row(
              children: [
                AppIcons.applied,
                SizedBox(width: 3.w,),
                DefaultText(text:AppString.visitJob,fontSize: 11.sp,
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
                AppIcons.message,
                SizedBox(width: 3.w,),
                DefaultText(text:AppString.viewMyApp,fontSize: 11.sp,
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
                AppIcons.email,
                SizedBox(width: 3.w,),
                DefaultText(text:AppString.markAsUnread,fontSize: 11.sp,
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
                AppIcons.notification,
                SizedBox(width: 3.w,),
                DefaultText(text:AppString.mute,fontSize: 11.sp,
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
                AppIcons.archive,
                SizedBox(width: 3.w,),
                DefaultText(text:AppString.archive,fontSize: 11.sp,
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
                AppIcons.delete,
                SizedBox(width: 3.w,),
                DefaultText(text:AppString.deleteConversation,fontSize: 11.sp,
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
  ),

);