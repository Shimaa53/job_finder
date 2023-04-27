import 'package:flutter/material.dart';

import '../../model/suggest_job.dart';
import 'package:sizer/sizer.dart';
import '../utilities/app_string.dart';
import '../utilities/assets.dart';
import '../utilities/color.dart';
import '../utilities/icon.dart';
import 'default_text.dart';
import 'main_button.dart';

Widget BuildSuggestJob(SuggestJobModel buildSuggestJob) {
  return Container(
    height: 26.h,
    width: 75.w,
    decoration: BoxDecoration(
        color: AppColor.blue2,
        borderRadius: BorderRadius.circular(12)
    ),
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.4.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(buildSuggestJob.image,height: 6.2.h,width:10.w),
                SizedBox(width: 4.w,),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      DefaultText(text: AppString.productDesigner,fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.white0,
                      ),
                      SizedBox(height: 0.7.h,),
                      Row(
                        children: [
                          DefaultText(text:buildSuggestJob.text,color: AppColor.lightGrey,),
                          SizedBox(width: 0.7.w,),
                          CircleAvatar(backgroundColor: AppColor.lightGrey,minRadius: 2,),
                          SizedBox(width: 0.7.w,),
                          DefaultText(text:AppString.unitedStates,color: AppColor.lightGrey,)

                        ],
                      ),
                    ]
                ),
                Spacer(),
                IconButton(onPressed: (){}, icon: AppIcons.saved,color:  AppColor.white0,iconSize: 30,)
              ],
            ),
            SizedBox(height:2.h,),
            Row(
              children: [
                Container(
                  height: 4.5.h,
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                  decoration: BoxDecoration(
                    color: AppColor.white0.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child:  Center(
                    child: DefaultText(text: AppString.fullTime,
                      color: AppColor.white0,
                    ),
                  ),
                ),
                SizedBox(width: 1.w,),
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                  decoration: BoxDecoration(
                    color: AppColor.white0.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child:  Center(
                    child: DefaultText(text: AppString.remote,
                      color: AppColor.white0,
                    ),
                  ),
                ),
                SizedBox(width: 1.w,),
                Container(
                  height: 35,
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                  decoration: BoxDecoration(
                    color: AppColor.white0.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child:  Center(
                    child: DefaultText(text: AppString.design,
                      color: AppColor.white0,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height:2.h,),
            Row(
              children: [
                DefaultText(text:'${AppString.dollar}${AppString.p12}${AppString.thousand}${AppString.minus}${AppString.p15}${AppString.thousand}',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white0,
                ),
                DefaultText(text:AppString.month,color: AppColor.lightGrey,),
                Spacer(),
                MainButton(onTap: () {  },
                  text: AppString.applyNow,
                  width: 27.w,
                  height: 4.5.h,

                )


              ],
            )

          ],
        ),
      ),
    ),
  );

}