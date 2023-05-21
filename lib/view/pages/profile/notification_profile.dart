import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../controller/cubit/bottom/job_cubit.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_text.dart';

class NotificationProfile extends StatelessWidget {
  const NotificationProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
              buildSizedBox(height: 1.5.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: DefaultText(text: AppString.jobNotification,color: AppColor.grey,fontSize:11.sp,),
              ),
              buildSizedBox(height: 1.5.h,),
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

                            ), separatorBuilder: (BuildContext context, int index) =>buildDivider(thickness: 1.5,),
                        itemCount: JobCubit.jobNotification.length,
                      ),
                    )
                ),
              ),
              buildSizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: DefaultText(text: AppString.otherNotification,color: AppColor.grey,fontSize:11.sp,),
              ),
              buildSizedBox(height: 2.h,),
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

                      ), separatorBuilder: (BuildContext context, int index) =>buildDivider(thickness: 1.5,),
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
