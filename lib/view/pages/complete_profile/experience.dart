import 'package:flutter/material.dart';
import 'package:job_finder/view/utilities/assets.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:job_finder/view/widgets/custom_widget/default_formfield.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';


class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

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
            text:AppString.experience,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColor.darkBlue,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.5.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          horizontal: 1.w, vertical: 1.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.white)
                      ),
                      child:Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.5.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DefaultText(text:AppString.position,
                              color: AppColor.lightGrey,
                              fontSize:11.sp,),
                            buildSizedBox(height: 1.h),
                            DefaultFormField(),
                            buildSizedBox(height: 2.h),
                            DefaultText(
                              text: AppString.typeOfWork,
                              color: AppColor.lightGrey,
                              fontSize: 11.sp,
                            ),
                            buildSizedBox(height: 1.h),
                            DefaultFormField(
                              suffixIcon: AppIcons.down,
                            ),
                            buildSizedBox(height: 2.h),
                            DefaultText(
                              text: AppString.companyName,
                              color: AppColor.lightGrey,
                              fontSize: 11.sp,
                            ),
                            buildSizedBox(height: 1.h),
                            DefaultFormField(
                            ),
                            buildSizedBox(height: 2.h),
                            DefaultText(
                              text: AppString.location,
                              color: AppColor.lightGrey,
                              fontSize: 11.sp,
                            ),
                            buildSizedBox(height: 1.h),
                            DefaultFormField(
                              prefixIcon:AppIcons.location,

                            ),
                            buildSizedBox(height: 1.h),
                            DefaultText(
                              text: AppString.currentlyIn,
                              color: AppColor.darkBlue,
                              fontSize: 10.sp,
                            ),
                            buildSizedBox(height: 2.h),
                            DefaultText(
                              text: AppString.startYearExp,
                              color: AppColor.lightGrey,
                              fontSize: 11.sp,
                            ),
                            buildSizedBox(height: 1.h),
                            DefaultFormField(

                            ),


                            buildSizedBox(height: 5.h),
                            MainButton(
                                text: AppString.save,
                                onTap: () {

                                }
                                ,
                                colorBox: AppColor.blue),

                          ],

                        ),
                      ),
                    ),
                    buildSizedBox(height: 3.h),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.w, vertical: 2.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.white)
                      ),
                      child:Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(AppAssets.logoExperience,height: 6.h,width: 11.w,),
                          buildSizedBox(width: 2.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DefaultText(text:AppString.sUiDesign,
                                color: AppColor.darkBlue,
                                fontWeight: FontWeight.w500,
                                fontSize:11.sp,),
                              DefaultText(text:AppString.growUp,
                                color: AppColor.grey,
                                fontSize:10.sp,),
                              DefaultText(text:AppString.yearOfExperience,
                                color: AppColor.lightGrey,
                                fontSize:10.sp,),


                            ],

                          ),
                          buildSpacer(),
                          IconButton(
                            icon: AppIcons.edit,
                            onPressed: (){
                            },
                            color: AppColor.blue,
                            iconSize: 25,
                          ),
                        ],
                      ),
                    )

                  ]
              )
          ),
        )
    );
  }
}
