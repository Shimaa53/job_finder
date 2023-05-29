import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/apply_job_widget/company_widget.dart';
import '../../widgets/apply_job_widget/description_widget.dart';
import '../../widgets/apply_job_widget/people_widget.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';


class JobDetails extends StatefulWidget {
  // final String img;
  // final String jobType;
  // final String typeApp;
  // final String place;
  // final String timeType;
  // final String type;
  // final String levelType;
  //
  //  JobDetails(
  //     {
  //     required this.img,
  //     required this.jobType,
  //     required this.typeApp,
  //     required this.place,
  //     required this.timeType,
  //     required this.type,
  //     required this.levelType});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: AppIcons.back,
            color: AppColor.darkGrey,
            onPressed: () {
                Navigator.pop(context);
            },),
          title: DefaultText(
            text:AppString.jobDetails,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColor.darkBlue,
          ),
          actions: [
            IconButton(onPressed: () {  },
            icon: AppIcons.saved,
              color:AppColor.blue,
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.h),
            child:Column(
          children: [
            Image.asset(AppAssets.slackLogo,height: 6.5.h,width: 12.w,),
            buildSizedBox(height: 1.h,),
            DefaultText(text:AppString.sUiDesign,fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.darkBlue,
            ),
            buildSizedBox(height: 1.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultText(text:AppString.slack
                  ,color: AppColor.grey1,),
                buildSizedBox(width: 0.7.w,),
                CircleAvatar(backgroundColor: AppColor.grey1,minRadius: 2,),
                buildSizedBox(width: 0.7.w,),
                DefaultText(text:'${AppString.jakarta},${AppString.indonesia}',color: AppColor.grey1,)


              ],
            ),
            buildSizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 4.5.h,
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                  decoration: BoxDecoration(
                    color: AppColor.babyblue1,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child:  Center(
                    child: DefaultText(text:AppString.fTime,
                      color: AppColor.blue,
                    ),
                  ),
                ),
                buildSizedBox(width:2.w,),
                Container(
                  height: 4.5.h,
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                  decoration: BoxDecoration(
                    color: AppColor.babyblue1,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child:  Center(
                    child: DefaultText(text:AppString.onSite,
                      color: AppColor.blue,
                    ),
                  ),
                ),
                buildSizedBox(width:2.w,),
                Container(
                  height: 4.5.h,
                  padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                  decoration: BoxDecoration(
                    color: AppColor.babyblue1,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child:  Center(
                    child: DefaultText(text:AppString.senior,
                      color: AppColor.blue,
                    ),
                  ),
                ),


              ],
            ),
            buildSizedBox(height: 3.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    height: 6.h,
                    padding: EdgeInsets.symmetric(horizontal: 4.5.w,vertical: 2.h),
                    decoration: BoxDecoration(
                      color: AppColor.white3,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child:  Center(
                      child: DefaultText(text:AppString.description,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      currentIndex=0;
                    });
                  },
                ),
                InkWell(
                  child: Container(
                    height: 6.h,
                    padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
                    decoration: BoxDecoration(
                      color: AppColor.white3,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child:  Center(
                      child: DefaultText(text:AppString.company,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      currentIndex=1;
                    });
                  },
                ),
                InkWell(
                  child: Container(
                    height: 6.h,
                    padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
                    decoration: BoxDecoration(
                      color: AppColor.white3,
                      borderRadius: BorderRadius.circular(90),
                    ),
                    child:  Center(
                      child: DefaultText(text:AppString.people,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      currentIndex=2;
                    });
                  },
                ),

              ],
            ),

            Expanded(
              child: IndexedStack(
                index: currentIndex,
                children: [
                  description(),
                  company(),
                  people()

                ],

              ),
            ),

            MainButton(
                text: AppString.applyNow,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.applyJobPageRoute);
                }
                ,
                colorBox:AppColor.blue  ),


    ]
    )
        ));

  }
}
