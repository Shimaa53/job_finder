import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/routes.dart';
import '../../widgets/default_text.dart';
import '../../widgets/main_button.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 4.h,
              ),
              DefaultText(
                text: AppString.text1InLocation,
                fontSize: 19.sp,
                fontWeight: FontWeight.w500,
                color: AppColor.darkBlue,
              ),
              SizedBox(
                height: 1.1.h,
              ),
              DefaultText(
                text: AppString.text2InLocation,
                fontSize: 11.sp,
                color: AppColor.grey,
              ),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  Container(
                    height: 37,
                    padding: EdgeInsets.all(10.5),
                    decoration: BoxDecoration(
                      color: AppColor.white1,
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(color: AppColor.white2)
                    ),
                    child: Row(
                      children: [
                        Image.asset(AppAssets.unitedStates,height: 3.5.h,width: 6.5.w,),
                        DefaultText(text: AppString.unitedStates,color: AppColor.darkBlue,fontSize: 11.sp,)
                      ],
                    ),

                  )
                ],
              ),
                  SizedBox(
                    height: 6.h,
                  ),
              MainButton(
                text: AppString.next,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.locationPageRoute);
                },
                colorBox: AppColor.blue,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
