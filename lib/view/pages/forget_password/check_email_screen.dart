import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/routes.dart';
import '../../widgets/default_text.dart';
import '../../widgets/main_button.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(

          children: [
            SizedBox(height: 25.h,),
            Image.asset(AppAssets.checkEmail,height: 19.h,width: 100.w,),
            SizedBox(height: 1.1.h,),
            DefaultText(text: AppString.text1InCheckEmail,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
            SizedBox(height: 1.1.h,),
            DefaultText(text:AppString.text2InCheckEmail,fontSize: 11.sp,
              color: AppColor.grey,
            ),
            SizedBox(height: 34.h,),
            MainButton(
                text: AppString.openEmail,
                onTap: () {
                    Navigator.pushNamed(context, AppRoutes.newPasswordPageRoute);


                }
                ,
                colorBox:AppColor.blue  ),

          ],
        ),
      )
    );
  }
}
