import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jop_finder/model/recent_job.dart';
import 'package:jop_finder/model/suggest_job.dart';
import 'package:jop_finder/view/utilities/routes.dart';
import 'package:jop_finder/view/widgets/default_text.dart';
import 'package:jop_finder/view/widgets/recent_job_widget.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/default_formfield.dart';
import '../../widgets/suggest_job_widget.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
            return Scaffold(
             body: SafeArea(
                 child:Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 6.w),
                     child:
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                   children:[
                     SizedBox(height: 4.h,),
                     Row(
                       children:[
                         Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children:[

                             DefaultText(text: AppString.text1InHome,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue),
                             SizedBox(height: 1.1.h,),
                             DefaultText(text:AppString.text2InHome,)
                           ]
                         ),
                         Spacer(),
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
                     SizedBox(height: 3.5.h,),
                     DefaultFormField(
                       controller: searchController,
                       prefixIcon:AppIcons.search,
                       hintText: AppString.search,
                       radius: 90,
                       isdense: true,
                       onTap: (){
                         Navigator.pushNamed(context, AppRoutes.searchPageRoute,);
                       },

                     ),
                     SizedBox(height: 1.1.h,),
                     Row(
                       children: [
                         DefaultText(text:AppString.suggestJob,fontSize: 12.5.sp,fontWeight: FontWeight.w500,color: AppColor.darkBlue,),
                         Spacer(),
                         TextButton(
                             onPressed: (){},
                             child: DefaultText(
                               text:AppString.viewAll,color: AppColor.blue,
                             ))
                       ],
                     ),
                     SizedBox(height: 1.1.h,),
                     Expanded(
                       child: ListView.separated(
                         scrollDirection: Axis.horizontal,
                           itemBuilder: (context, index) => BuildSuggestJob(SuggestJobModel.suggest[index]),
                           separatorBuilder:(context,index) =>SizedBox(width: 4.w,),
                           itemCount: SuggestJobModel.suggest.length),
                     ),
                     SizedBox(height: 1.1.h,),
                     Row(
                       children: [
                         DefaultText(text:AppString.recentJob,fontSize: 12.5.sp,fontWeight: FontWeight.w500,color: AppColor.darkBlue,),
                         Spacer(),
                         TextButton(
                             onPressed: (){},
                             child: DefaultText(
                               text:AppString.viewAll,color: AppColor.blue,
                             ))
                       ],
                     ),
                     SizedBox(height: 1.1.h,),
                     Expanded(
                       child: ListView.separated(
                           itemBuilder: (context, index) => BuildRecentJob(RecentJobModel.recent[index]),
                           separatorBuilder:(context,index)=> Divider(),
                           itemCount: RecentJobModel.recent.length),
                     )
                   ]
                 ))
                 ),
               
            );
  }
}
