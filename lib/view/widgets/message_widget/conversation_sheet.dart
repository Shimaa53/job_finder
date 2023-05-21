import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../custom_widget/default_text.dart';

Widget conversationSheet(BuildContext context)=>Container(
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
                buildSizedBox(width: 3.w,),
                DefaultText(text:AppString.visitJob,fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.darkBlue,
                ),
                buildSpacer(),
                AppIcons.forward,
              ],
            ),
          ),
        ),
        buildSizedBox(height: 1.5.h,),
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
                buildSizedBox(width: 3.w,),
                DefaultText(text:AppString.viewMyApp,fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.darkBlue,
                ),
                buildSpacer(),
                AppIcons.forward,
              ],
            ),
          ),
        ),
        buildSizedBox(height: 1.5.h,),
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
                buildSizedBox(width: 3.w,),
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
        buildSizedBox(height: 1.5.h,),
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
                buildSizedBox(width: 3.w,),
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
        buildSizedBox(height: 1.5.h,),
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
                buildSizedBox(width: 3.w,),
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
        buildSizedBox(height: 1.5.h,),
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
                buildSizedBox(width: 3.w,),
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