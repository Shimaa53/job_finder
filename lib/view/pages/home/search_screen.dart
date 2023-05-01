import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/cubit/bottom/job_cubit.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);

  TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
             height: 17.h,
             width: double.infinity,
             color: AppColor.white0,
             child: SafeArea(
               child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 6.w),
                 child: Row(
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


                       ),
                     ),

                   ],
                 ),
               ),
             ),
            ),
           SizedBox(height: 1.5.h,),
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 6.w),
             child: DefaultText(text: AppString.recentSearch,color: AppColor.grey,fontSize:11.sp,),
           ),
           SizedBox(height: 1.5.h,),
           Container(
             height: 32.h,
             width: double.infinity,
             color: AppColor.white0,
             child: Padding(
               padding:  EdgeInsets.symmetric(horizontal: 6.w),
               child: Expanded(
                 child: ListView.builder(itemBuilder: (context, index) => Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 1.5.h,),
                     AppIcons.time,
                     SizedBox(width: 2.w,),
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context,AppRoutes.selectJobPageRoute);
                       },
                         child: DefaultText(text:JobCubit.recentSearch[index],
                           color: AppColor.darkBlue,
                           fontSize:11.sp,)),
                     Spacer(),
                     IconButton(onPressed: (){}, icon: AppIcons.cancel,color: AppColor.danger,)
                   ],
                 )
                   //
                 ),
               )
             ),
           ),
           SizedBox(height: 2.h,),
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 6.w),
             child: DefaultText(text: AppString.popularSearch,color: AppColor.grey,fontSize:11.sp,),
           ),
           SizedBox(height: 2.h,),
           Container(
             height: 32.h,
             width: double.infinity,
             color: AppColor.white0,
             child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 6.w),
                 child: Expanded(
                   child: ListView.builder(itemBuilder: (context, index) => Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(height: 1.5.h,),
                       AppIcons.time,
                       SizedBox(width: 2.w,),
                       InkWell(child: DefaultText(text:JobCubit.popularSearch[index],color: AppColor.darkBlue,fontSize:11.sp,)),
                       Spacer(),
                       IconButton(onPressed: (){}, icon: AppIcons.cancel,color: AppColor.danger,)
                     ],
                   )
                     //
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
