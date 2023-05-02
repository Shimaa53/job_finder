import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import '../../../model/boarding_model.dart';
import '../../utilities/color.dart';
import '../custom_widget/build_custom_widget.dart';
import '../custom_widget/default_text.dart';

Widget buildBoardingItem(BoardingModel buildBoardingItem){
  return Column(
    children: [
      Image.asset(buildBoardingItem.image,height: 45.h,width: double.infinity.w),
      Padding(
        padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 3.2.h),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                  text:buildBoardingItem.information1,style: TextStyle(
                  color: AppColor.darkBlue,fontSize: 22.sp,fontWeight: FontWeight.w500
              ),
                  children: [
                    TextSpan(
                      text:buildBoardingItem.information2,style: TextStyle(
                        color: AppColor.blue,fontSize: 22.sp,fontWeight: FontWeight.w500
                    ),
                    ),
                    TextSpan(
                      text:buildBoardingItem.information3,style: TextStyle(
                        color: AppColor.darkBlue,fontSize: 22.sp,fontWeight: FontWeight.w500
                    ),
                    ),

                  ]
              ),
            ),
            buildSizedBox(height: 1.6.h,),
            DefaultText(text:buildBoardingItem.details,
              fontSize: 11.sp,
              color:AppColor.grey,
            )
          ],
        ),
      ),
    ],
  );
}