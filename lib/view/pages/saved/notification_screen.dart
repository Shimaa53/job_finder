import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: AppColor.white0,
        leading: IconButton(
          icon: AppIcons.back,
          color: AppColor.darkGrey,
          onPressed: () {  },),
        title: DefaultText(
          text:AppString.notification,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),

      ),
      // body: Padding(
      //   padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
      //   child: Center(
      //     child: Column(
      //       children: [
      //         SizedBox(height: 13.h,),
      //         Image.asset(AppAssets.notification,height: 19.h,width: 43.25.w,),
      //         SizedBox(height: 3.h,),
      //         DefaultText(text:AppString.text1InNoNotification,fontSize: 16.5.sp,
      //           fontWeight: FontWeight.w500,
      //           color: AppColor.darkBlue,
      //         ),
      //         SizedBox(height: 1.h,),
      //         DefaultText(text:AppString.text2InNoNotification
      //           ,color: AppColor.grey1,height: 1.4,
      //         ),
      //
      //
      //
      //       ],
      //     ),
      //   ),
      // ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 1.5.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w),
            child: DefaultText(text: AppString.newNotifi,color: AppColor.grey,fontSize:11.sp,),
          ),
          SizedBox(height: 1.5.h,),
          Container(
            height: 35.h,
            width: double.infinity,
            color: AppColor.white0,
            child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                 child:
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:3.h,),
                    Image.asset(AppAssets.twitter,height: 5.5.h,width: 10.w,),
                    SizedBox(width: 2.w,),
                    Column(
                      children: [
                        Row(children: [
                          DefaultText(text:AppString.dana,
                          color: AppColor.darkBlue,
                          fontSize:11.sp,),
                          Spacer(),
                          CircleAvatar(radius: 8,),
                          DefaultText(text:AppString.postedNewJob
                            ,color: AppColor.grey1,),


                        ],),
                        DefaultText(text:AppString.time
                          ,color: AppColor.grey1,),
                      ],
                    ),


                  ],
                ),
                )
            ),

          SizedBox(height: 2.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w),
            child: DefaultText(text: AppString.yesterday,color: AppColor.grey,fontSize:11.sp,),
          ),
          SizedBox(height: 2.h,),
          Expanded(
            child: Container(
              width: double.infinity,
              color: AppColor.white0,
              child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 6.w),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:3.h,),
                      Image.asset(AppAssets.twitter,height: 5.5.h,width: 10.w,),
                      SizedBox(width: 2.w,),
                      Column(
                        children: [
                          Row(children: [
                            DefaultText(text:AppString.dana,
                              color: AppColor.darkBlue,
                              fontSize:11.sp,),
                            Spacer(),
                            CircleAvatar(radius: 8,),
                            DefaultText(text:AppString.postedNewJob
                              ,color: AppColor.grey1,),


                          ],),
                          DefaultText(text:AppString.time
                            ,color: AppColor.grey1,),
                        ],
                      ),


                    ],
                  ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
