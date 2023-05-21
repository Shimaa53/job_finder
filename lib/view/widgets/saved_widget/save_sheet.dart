import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../custom_widget/default_text.dart';

Widget saveSheet(BuildContext context)=>Container(
    height:MediaQuery.of(context).size.height*.4,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: AppColor.white0,
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 6.w,right: 6.w,top: 6.h,bottom: 6.h),
      child:Column(
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
                  DefaultText(text:AppString.applyJob,fontSize: 11.sp,
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
                  AppIcons.share,
                  buildSizedBox(width: 3.w,),
                  DefaultText(text:AppString.share,fontSize: 11.sp,
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
                  AppIcons.saved,
                  buildSizedBox(width: 3.w,),
                  DefaultText(text:AppString.cancelSave,fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlue,
                  ),
                  buildSpacer(),
                  AppIcons.forward,
                ],
              ),
            ),
          ),

        ],
      ),
    ));