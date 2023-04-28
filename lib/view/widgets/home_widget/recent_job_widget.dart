import 'package:flutter/material.dart';
import 'package:jop_finder/model/recent_job.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../custom_widget/default_text.dart';

Widget BuildRecentJob(RecentJobModel buildRecentJob)=>
    Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(buildRecentJob.image,height: 6.2.h,width:10.w),
            SizedBox(width: 4.w,),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  DefaultText(text: buildRecentJob.job,fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlue,
                  ),
                  SizedBox(height: 0.7.h,),
                  Row(
                    children: [
                      DefaultText(text:buildRecentJob.text,color: AppColor.grey1,),
                      SizedBox(width: 0.7.w,),
                      CircleAvatar(backgroundColor: AppColor.grey1,minRadius: 2,),
                      SizedBox(width: 0.7.w,),
                      DefaultText(text:AppString.place,color: AppColor.grey1,)

                    ],
                  ),
                ]
            ),
            Spacer(),
            IconButton(onPressed: (){}, icon: AppIcons.saved,color:  AppColor.darkBlue,iconSize: 30,)
          ],
        ),
        SizedBox(height:2.5.h,),
        Row(
          children: [
            Container(
              height: 4.5.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                color: AppColor.babyblue1,
                borderRadius: BorderRadius.circular(90),
              ),
              child:  Center(
                child: DefaultText(text: AppString.fullTime,
                  color: AppColor.blue,
                ),
              ),
            ),
            SizedBox(width: 1.w,),
            Container(
              height: 35,
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                color: AppColor.babyblue1,
                borderRadius: BorderRadius.circular(90),
              ),
              child:  Center(
                child: DefaultText(text: AppString.remote,
                  color: AppColor.blue,
                ),
              ),
            ),
            SizedBox(width: 1.w,),
            Container(
              height: 35,
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                color: AppColor.babyblue1,
                borderRadius: BorderRadius.circular(90),
              ),
              child:  Center(
                child: DefaultText(text: AppString.senior,
                  color: AppColor.blue,
                ),
              ),
            ),
            Spacer(),
            RichText(
                text: TextSpan(
                    text: '${AppString.dollar}${AppString.p15}${AppString.thousand}',
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.green
                    ),

                    children:[ TextSpan(
                        text: AppString.month,
                        style: TextStyle(
                            fontSize: 9.sp,
                            color: AppColor.grey
                        )
                    ),])

            )

          ],
        ),


      ],
    );