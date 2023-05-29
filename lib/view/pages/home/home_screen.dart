import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/controller/cubit/bottom/job_cubit.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/home_widget/recent_job_widget.dart';
import '../../widgets/home_widget/suggest_job_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return
       SafeArea(
          child:Padding(
              padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 4.h),
              child:
               Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Row(
                        children:[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[

                                DefaultText(text: AppString.text1InHome,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue),
                                buildSizedBox(height: 1.1.h,),
                                DefaultText(text:AppString.text2InHome,)
                              ]
                          ),
                          buildSpacer(),
                          CircleAvatar(
                              radius: 23,
                              backgroundColor: AppColor.white,
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: AppColor.white1,
                                child: AppIcons.notification,
                                foregroundColor: AppColor.darkGrey,
                              )
                          ),

                        ],
                      ),
                      buildSizedBox(height: 3.5.h,),
                      DefaultFormField(
                        controller: searchController,
                        prefixIcon:AppIcons.search,
                        hintText: AppString.search,
                        radius: 90,
                        isDense: true,
                        onTap: (){
                          Navigator.pushNamed(context, AppRoutes.searchPageRoute,);
                        },
                        onChanged: (data){
                          print(data);
                        },

                      ),
                      buildSizedBox(height: 1.1.h,),
                      Row(
                        children: [
                          DefaultText(text:AppString.suggestJob,fontSize: 12.5.sp,fontWeight: FontWeight.w500,color: AppColor.darkBlue,),
                          buildSpacer(),
                          TextButton(
                              onPressed: (){},
                              child: DefaultText(
                                text:AppString.viewAll,color: AppColor.blue,
                              ))
                        ],
                      ),
                      buildSizedBox(height: 1.1.h,),
                      Expanded(
                        child: BlocBuilder<JobCubit,JobState>(
                          builder: (context,state){
                          return ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => buildSuggestJob(JobCubit.get(context).home[index]),
                              separatorBuilder:(context,index) =>buildSizedBox(width: 4.w,),
                              itemCount:JobCubit.get(context).home.length
                          );}

     )
                       ),
                      buildSizedBox(height: 1.1.h,),
                      Row(
                        children: [
                          DefaultText(text:AppString.recentJob,fontSize: 12.5.sp,fontWeight: FontWeight.w500,color: AppColor.darkBlue,),
                          buildSpacer(),
                          TextButton(
                              onPressed: (){},
                              child: DefaultText(
                                text:AppString.viewAll,color: AppColor.blue,
                              ))
                        ],
                      ),
                      buildSizedBox(height: 1.1.h,),
                      Expanded(
                        child: BlocBuilder<JobCubit,JobState>(
                               builder: (context,state){
                               return ListView.separated(
                              itemBuilder: (context, index) => buildRecentJob(JobCubit.get(context).jobs[index]),
                              separatorBuilder:(context,index)=> buildDivider(),
                              itemCount:JobCubit.get(context).jobs.length);
                        })
                      )

                    ]
                ),
              )


    );
  }
}