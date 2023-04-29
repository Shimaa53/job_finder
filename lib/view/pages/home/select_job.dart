import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jop_finder/model/select_job_model.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';
import '../../widgets/home_widget/select_job_widget.dart';
import '../../widgets/home_widget/set_filter_widget.dart';

class SelectJob extends StatelessWidget {
   SelectJob({Key? key}) : super(key: key);
  TextEditingController searchController=TextEditingController();
   var scaffoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 22.h,
            width: double.infinity,
            color: AppColor.white0,
            child: SafeArea(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            icon: AppIcons.back),
                        SizedBox(width: 2.w,),
                        Expanded(
                          child: DefaultFormField(
                            controller: searchController,
                            prefixIcon:AppIcons.search,
                            hintText: AppString.searchSomeThing,
                            radius: 90,
                            isDense: true,
                            suffixIcon:IconButton(onPressed: (){}, icon: AppIcons.cancel,iconSize: 23,color: AppColor.darkGrey,),


                          ),
                        ),

                      ],
                    ),
              Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                        return Row(
                            children:[
                              IconButton(
                                  icon: Icon(Icons.filter),
                                onPressed: (){
                                  scaffoldKey.currentState!.showBottomSheet((context) =>
                                  BuildSetFilter(context)                                  );
                                },
                              ),
                              Container(
                                height: 4.5.h,
                                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(90),
                                ),
                                child:  Row(
                                  children: [
                                    DefaultText(text: AppString.remote,
                                      color: AppColor.darkGrey,
                                    ),
                                    IconButton(onPressed: (){}, icon: AppIcons.down)
                                  ],
                                ),
                              ),
                              Container(
                                height: 4.5.h,
                                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(90),
                                ),
                                child:  Row(
                                  children: [
                                    DefaultText(text: AppString.fTime,
                                      color: AppColor.darkGrey,
                                    ),
                                    IconButton(onPressed: (){}, icon: AppIcons.down)
                                  ],
                                ),
                              ),
                              Container(
                                height: 4.5.h,
                                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(90),
                                ),
                                child:  Row(
                                  children: [
                                    DefaultText(text: AppString.postDate,
                                      color: AppColor.darkGrey,
                                    ),
                                    IconButton(onPressed: (){}, icon: AppIcons.down)
                                  ],
                                ),
                              ),
                              Container(
                                height: 4.5.h,
                                width:200,
                                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(90),
                                ),
                                child:  Row(
                                  children: [
                                    DefaultText(text: AppString.experienceLevel,
                                      color: AppColor.darkGrey,
                                    ),
                                    IconButton(onPressed: (){}, icon: AppIcons.down)
                                  ],
                                ),
                              ),


                            ]);},
                  separatorBuilder: (BuildContext context, int index) =>SizedBox(width: 4.w,),
                  itemCount: 1,
                      ),
              )                        ],
                            ),
                          ),


                        ),

                ),
          SizedBox(height: 2.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w),
            child: DefaultText(text: AppString.feature,color: AppColor.grey,fontSize:11.sp,),
          ),
          SizedBox(height: 2.h,),
          Expanded(child: Container(
            color: AppColor.white0,
            child: Padding(
              padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 2.h),
              child:ListView.separated(
                  itemBuilder:(context, index) =>  buildSelectJob(SelectJobModel.selectJob[index]),
                  separatorBuilder: (context,index)=>Divider(thickness: 2,),
                  itemCount: SelectJobModel.selectJob.length)
            )
          )),


          // Padding(
          //   padding:  EdgeInsets.symmetric(horizontal: 6.w),
          //   child: Column(
          //
          //     children: [
          //       SizedBox(height: 25.h,),
          //       Image.asset(AppAssets.notFound,height: 19.h,width: 100.w,),
          //       SizedBox(height: 1.1.h,),
          //       DefaultText(text: AppString.notFound,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
          //       SizedBox(height: 1.1.h,),
          //       DefaultText(text:AppString.tryDiff,fontSize: 11.sp,
          //         color: AppColor.grey,
          //       ),
          //
          //
          //
          //     ],
          //   ),
          // )



        ],
      ),

    );
  }
}

