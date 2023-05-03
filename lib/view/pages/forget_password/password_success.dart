import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';

class PasswordSuccess extends StatelessWidget {
  const PasswordSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Padding(
          padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 25.h,bottom: 4.h),
          child: Column(

            children: [
              Image.asset(AppAssets.passwordSuccess,height: 19.h,width: 100.w,),
              buildSizedBox(height: 1.1.h,),
              DefaultText(text: AppString.text1InPasswordSuccess,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
              buildSizedBox(height: 1.1.h,),
              DefaultText(text: AppString.text2InPasswordSuccess,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
              buildSizedBox(height: 1.1.h,),
              DefaultText(text:AppString.text3InPasswordSuccess,fontSize: 11.sp,
                color: AppColor.grey,
              ),
              buildSpacer(),
              MainButton(
                  text: AppString.openEmail,
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.bottomPageRoute);


                  }
                  ,
                  colorBox:AppColor.blue  ),

            ],
          ),
        )
    );
  }
}