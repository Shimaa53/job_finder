import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:jop_finder/view/utilities/color.dart';
import 'package:jop_finder/view/utilities/icon.dart';
import 'package:jop_finder/view/widgets/apply_job_widget/company_widget.dart';
import 'package:jop_finder/view/widgets/custom_widget/default_text.dart';
import 'package:jop_finder/view/widgets/apply_job_widget/description_widget.dart';
import 'package:jop_finder/view/widgets/apply_job_widget/people_widget.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/routes.dart';
import '../../widgets/custom_widget/main_button.dart';

class JobDetails extends StatefulWidget {
   const JobDetails({Key? key}) : super(key: key);

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              icon: AppIcons.back,
            color: AppColor.darkGrey,
            onPressed: () {  },),
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
            Image.asset(AppAssets.twitter,height: 6.5.h,width: 12.w,),
            SizedBox(height: 1.h,),
            DefaultText(text:AppString.sUiDesign,fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.darkBlue,
            ),
            SizedBox(height: 1.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultText(text:AppString.twitter
                  ,color: AppColor.grey1,),
                SizedBox(width: 0.7.w,),
                CircleAvatar(backgroundColor: AppColor.grey1,minRadius: 2,),
                SizedBox(width: 0.7.w,),
                DefaultText(text:'${AppString.jakarta},${AppString.indonesia}',color: AppColor.grey1,)


              ],
            ),
            SizedBox(height: 2.h,),
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
                SizedBox(width:2.w,),
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
                SizedBox(width:2.w,),
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
            SizedBox(height: 3.h,),
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

            const Spacer(),
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
