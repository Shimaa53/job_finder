import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_text.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: AppIcons.back,
          color: AppColor.darkGrey,
          onPressed: () {
            Navigator.pop(context);
          },),
        title: DefaultText(
          text:AppString.privacy,
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
              DefaultText(text: AppString.privacyImportant,fontSize: 14.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
              buildSizedBox(height: 2.h,),
              DefaultText(text:AppString.importantInPrivacy,fontSize: 10.2.sp,
                color: AppColor.grey,height: 1.4,
              ),
              buildSizedBox(height: 2.h,),
              DefaultText(text: AppString.dataController,fontSize: 14.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
              buildSizedBox(height: 2.h,),
              DefaultText(text:AppString.importantInData,fontSize: 10.2.sp,
                color: AppColor.grey,height: 1.4,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
