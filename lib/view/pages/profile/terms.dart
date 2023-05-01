import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_text.dart';


class TermsScreen extends StatelessWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: AppIcons.back,
          color: AppColor.darkGrey,
          onPressed: () {
            Navigator.pop(context);
          },),
        title: DefaultText(
          text:AppString.terms,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DefaultText(text: AppString.lorem,fontSize: 14.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
              buildSizedBox(height: 2.h,),
              DefaultText(text:AppString.loremDetails,fontSize: 10.2.sp,
                color: AppColor.grey,height: 1.4,
              ),
              buildSizedBox(height: 2.h,),
              DefaultText(text: AppString.lorem,fontSize: 14.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
              buildSizedBox(height: 2.h,),
              DefaultText(text:AppString.loremDetails1,fontSize: 10.2.sp,
                color: AppColor.grey,height: 1.4,
              ),
              buildSizedBox(height: 1.h,),
              Container(
                color: AppColor.white3,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 1.5.w,vertical: 1.5.h),
                child: DefaultText(text:AppString.loremDetails2,fontSize: 10.2.sp,
                  color: AppColor.grey,height: 1.4,
                ),
              ),
              buildSizedBox(height: 1.h,),
              DefaultText(text:AppString.loremDetails3,fontSize: 10.2.sp,
                color: AppColor.grey,height: 1.4,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
