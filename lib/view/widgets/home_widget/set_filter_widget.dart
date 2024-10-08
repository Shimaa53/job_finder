import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../custom_widget/default_formfield.dart';
import '../custom_widget/default_text.dart';
import '../custom_widget/main_button.dart';

Widget buildSetFilter(BuildContext context)=> Container(
  height:MediaQuery.of(context).size.height*0.96,
  width: double.infinity,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: AppColor.white0,
  ),
  child: Padding(
    padding: EdgeInsets.only(left: 6.w,right: 6.w,top: 6.h,bottom: 6.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            },
                icon: AppIcons.back),
            Center(child: DefaultText(text: AppString.setFilter,
              color: AppColor.darkBlue,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            )),

            TextButton(onPressed: (){},
                child: DefaultText(
                  text: AppString.reset,
                  color: AppColor.blue,
                  fontWeight: FontWeight.w500,

                ))
          ],
        ),
        buildSizedBox(height: 2.h,),
        DefaultText(text: AppString.jobTitle,color: AppColor.darkBlue,fontWeight: FontWeight.w500,fontSize: 11.sp,),
        buildSizedBox(height: 1.h,),
        DefaultFormField(
          prefixIcon: AppIcons.applied,
        ),
        buildSizedBox(height: 2.h,),
        DefaultText(text: AppString.location,color: AppColor.darkBlue,fontWeight: FontWeight.w500,fontSize: 11.sp,),
        buildSizedBox(height: 1.h,),
        DefaultFormField(
          prefixIcon: AppIcons.location,
        ),
        buildSizedBox(height: 2.h,),
        DefaultText(text: AppString.salary,color: AppColor.darkBlue,fontWeight: FontWeight.w500,fontSize: 11.sp,),
        buildSizedBox(height: 1.h,),
        DefaultFormField(
          prefixIcon: AppIcons.dollar,
        ),
        buildSizedBox(height: 2.h,),
        DefaultText(text: AppString.jobType,color: AppColor.darkBlue,fontWeight: FontWeight.w500,fontSize: 11.sp,),
        buildSizedBox(height: 2.h,),
        Row(
          children: [
            Container(
              height: 4.5.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                color: AppColor.babyblue1,
                borderRadius: BorderRadius.circular(90),
              ),
              child:  Center(
                child: DefaultText(text:AppString.fTime,
                  color: AppColor.blue,
                ),
              ),
            ),
            buildSizedBox(width:3.w,),
            Container(
              height: 4.5.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                color: AppColor.babyblue1,
                borderRadius: BorderRadius.circular(90),
              ),
              child:  Center(
                child: DefaultText(text:AppString.remote,
                  color: AppColor.blue,
                ),
              ),
            ),
            buildSizedBox(width:3.w,),
            Container(
              height: 4.5.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                color: AppColor.babyblue1,
                borderRadius: BorderRadius.circular(90),
              ),
              child:  Center(
                child: DefaultText(text:AppString.contract,
                  color: AppColor.blue,
                ),
              ),
            ),


          ],
        ),
        buildSizedBox(height: 2.h,),
        Row(
          children: [
            Container(
              height: 4.5.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                color: AppColor.babyblue1,
                borderRadius: BorderRadius.circular(90),
              ),
              child:  Center(
                child: DefaultText(text:AppString.partTime,
                  color: AppColor.blue,
                ),
              ),
            ),
            buildSizedBox(width:3.w,),
            Container(
              height: 4.5.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                color: AppColor.babyblue1,
                borderRadius: BorderRadius.circular(90),
              ),
              child:  Center(
                child: DefaultText(text:AppString.onSite,
                  color: AppColor.blue,
                ),
              ),
            ),
            buildSizedBox(width:3.w,),
            Container(
              height: 4.5.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                color: AppColor.babyblue1,
                borderRadius: BorderRadius.circular(90),
              ),
              child:  Center(
                child: DefaultText(text:AppString.internship,
                  color: AppColor.blue,
                ),
              ),
            ),


          ],
        ),
        buildSpacer(),
        MainButton(
            text: AppString.showResult,
            onTap: () {

            }
            ,
            colorBox:AppColor.blue  ),



      ],
    ),
  ),
);