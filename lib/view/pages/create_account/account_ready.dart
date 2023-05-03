import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
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
          padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 25.h,bottom: 4.h),
          child: Column(
            children: [
              Image.asset(AppAssets.accountSuccess,height: 19.h,width: 100.w,),
              buildSizedBox(height: 1.1.h,),
              DefaultText(text: AppString.text1InAccountSuccess,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
              buildSizedBox(height: 1.1.h,),
              DefaultText(text:AppString.text2InAccountSuccess,fontSize: 11.sp,
                color: AppColor.grey,
                height: 1.4,
              ),
              buildSpacer(),
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