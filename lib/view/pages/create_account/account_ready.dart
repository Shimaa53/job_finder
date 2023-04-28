import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';

class AccountReady extends StatelessWidget {
  const AccountReady({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 6.w),
          child: Column(

            children: [
              SizedBox(height: 25.h,),
              Image.asset(AppAssets.accountSuccess,height: 19.h,width: 100.w,),
              SizedBox(height: 1.1.h,),
              DefaultText(text: AppString.text1InAccountSuccess,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
              SizedBox(height: 1.1.h,),
              DefaultText(text:AppString.text2InAccountSuccess,fontSize: 11.sp,
                color: AppColor.grey,
              ),
              SizedBox(height: 30.h,),
              MainButton(
                  text: AppString.start,
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.homePageRoute);


                  }
                  ,
                  colorBox:AppColor.blue  ),

            ],
          ),
        )
    );
  }
}