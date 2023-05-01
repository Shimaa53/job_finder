import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/cubit/bottom/job_cubit.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_text.dart';

class NotificationProfile extends StatelessWidget {
  const NotificationProfile({Key? key}) : super(key: key);

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
            onPressed: () {
              Navigator.pop(context);
            },),
          title: DefaultText(
            text:AppString.notification,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColor.darkBlue,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 1.5.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: DefaultText(text: AppString.jobNotification,color: AppColor.grey,fontSize:11.sp,),
              ),
              SizedBox(height: 1.5.h,),
              Container(
                height: 44.h,
                width: double.infinity,
                color: AppColor.white0,
                child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.5.h),
                    child: Expanded(
                      child: ListView.separated(itemBuilder: (context, index) =>SwitchListTile(
                        dense: true,
                              value: true,
                              onChanged: (bool value) {  },
                              title:DefaultText(text:JobCubit.jobNotification[index],
                                color: AppColor.darkBlue,
                                fontSize:11.sp,),

                            ), separatorBuilder: (BuildContext context, int index) =>Divider(thickness: 1.5,),
                        itemCount: JobCubit.jobNotification.length,
                      ),
                    )
                ),
              ),
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: DefaultText(text: AppString.otherNotification,color: AppColor.grey,fontSize:11.sp,),
              ),
              SizedBox(height: 2.h,),
              Container(
                height: 30.h,
                width: double.infinity,
                color: AppColor.white0,
                child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.5.h),
                    child: Expanded(
                      child: ListView.separated(itemBuilder: (context, index) =>SwitchListTile(
                        dense: true,
                        value: true,
                        onChanged: (bool value) {  },
                        title:DefaultText(text:JobCubit.otherNotification[index],
                          color: AppColor.darkBlue,
                          fontSize:11.sp,),

                      ), separatorBuilder: (BuildContext context, int index) =>Divider(thickness: 1.5,),
                        itemCount: JobCubit.otherNotification.length,
                      ),
                    )
                ),
              ),
            ],
          ),
        )

    );
  }
}
