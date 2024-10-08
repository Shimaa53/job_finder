import 'package:flutter/material.dart';
import 'package:job_finder/view/utilities/routes.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../model/select_job_model.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../custom_widget/default_text.dart';

Widget buildSelectJob(SelectJobModel select,BuildContext context) {
   return Column(
      children: [
         Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Image.asset(select.image,height: 6.2.h,width:10.w),
               buildSizedBox(width: 4.w,),
               InkWell(
                  onTap: (){
                     Navigator.pushNamed(context, AppRoutes.jobDetailsPageRoute);
                  },
                 child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:[
                        DefaultText(text:select.job,fontSize: 13.sp,
                           fontWeight: FontWeight.w500,
                           color: AppColor.darkBlue,
                        ),
                        buildSizedBox(height: 0.7.h,),
                        Row(
                           children: [
                              DefaultText(text:select.text,color: AppColor.grey1,),
                              buildSizedBox(width: 0.7.w,),
                              CircleAvatar(backgroundColor: AppColor.grey1,minRadius: 2,),
                              buildSizedBox(width: 0.7.w,),
                              DefaultText(text:'${select.p1},${select.p2}',color: AppColor.grey1,)

                           ],
                        ),
                     ]
                 ),
               ),
               buildSpacer(),
               IconButton(onPressed: (){
               }, icon: AppIcons.saved,color:  AppColor.darkBlue,iconSize: 30,)
            ],
         ),
         buildSizedBox(height:2.5.h,),
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
                     child: DefaultText(text:select.type,
                        color: AppColor.blue,
                     ),
                  ),
               ),
               buildSizedBox(width: 1.w,),
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
               buildSpacer(),
               RichText(
                   text: TextSpan(
                       text: '${AppString.dollar}${select.price}${AppString.thousand}',
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
}