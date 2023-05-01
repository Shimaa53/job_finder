import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';


class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

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
            text:AppString.stepsVerification,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColor.darkBlue,
          ),

        ),
        body:  Padding(
          padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10.h,
                padding: EdgeInsets.symmetric(horizontal: 1.w,vertical: 1.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.white)
                ),
                child: SwitchListTile(
                    dense: true,
                    value: false,
                    onChanged: (bool value) {  },
                    title:DefaultText(text:AppString.secureAccount,
                      height: 1.4,
                      color: AppColor.grey1,
                      fontWeight: FontWeight.w500,
                      fontSize:11.sp,),),
              ),
              buildSizedBox(height: 3.h),
              ListTile(
                leading:CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColor.babyblue1,
                  child:AppIcons.lock,foregroundColor: AppColor.blue,),
                subtitle: DefaultText(text:AppString.askForVerificationCode,
                  height: 1.4,
                ),

              ),
              buildSizedBox(height: 3.h),
              ListTile(
                leading:CircleAvatar(
                  radius: 22,
                  backgroundColor: AppColor.babyblue1,
                  child:AppIcons.phone,foregroundColor: AppColor.blue,),
                subtitle: DefaultText(text:AppString.phoneOrAuth,
                  height: 1.4,
                ),

              )

            ],
          ),
        )
    );
  }
}
