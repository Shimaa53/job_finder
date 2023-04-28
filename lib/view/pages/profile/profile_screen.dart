import 'package:flutter/material.dart';
import 'package:jop_finder/model/profile_model.dart';
import 'package:jop_finder/view/widgets/profile_widget/profile_widget.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_text.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);
  List<String>other=[
    AppString.accessibility,
    AppString.helpCenter,
    AppString.terms,
    AppString.privacy,


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.babyBlue,
        elevation: 0.0,
        leading:IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: AppIcons.back,color: AppColor.darkGrey,),
        title:DefaultText(
          text: AppString.profile,
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),
        centerTitle: true,
        actions: [IconButton(
            onPressed: () {
            },
            icon: AppIcons.exit,)
        ],
      ),
     body: SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Stack(
             children: [
               Container(
                  height: 17.h,
                  width: double.infinity,
                  color: AppColor.babyBlue,
                  child:Align(
                    alignment:AlignmentDirectional.bottomCenter,
                    child: Image.asset(AppAssets.profile,height:12.h,width:22.5.w),
                  ),
               )
             ],
           ),
           Container(
    height: 58.h,
    width: double.infinity,
    color: AppColor.white0,
    child:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 6.w),
        child: Column(
        children:[
          SizedBox(height: 5.h,),
          DefaultText(text:AppString.name,fontSize: 13.sp,
               fontWeight: FontWeight.w500,
               color: AppColor.darkBlue,
             ),
             SizedBox(height: 0.95.h,),
             DefaultText(text:AppString.sUiDesign
               ,color: AppColor.grey1,),
             SizedBox(height: 3.h,),
             Container(
        width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
          decoration: BoxDecoration(
              color: AppColor.grey3,
              borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DefaultText(text: AppString.applied,color: AppColor.grey1,),
                  SizedBox(height: 1.h,),
                  DefaultText(text:AppString.n46,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlue,
                  ),
                ],
              ),
              VerticalDivider(color: AppColor.danger,),
              Column(
                children: [
                  DefaultText(text: AppString.reviewed,color: AppColor.grey1,),
                  SizedBox(height: 1.h,),
                  DefaultText(text:AppString.n23,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlue,
                  ),
                ],
              ),
              VerticalDivider(color: AppColor.danger,),
              Column(
                children: [
                  DefaultText(text: AppString.contacted,color: AppColor.grey1,),
                  SizedBox(height: 1.h,),
                  DefaultText(text:AppString.n16,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlue,
                  ),
                ],
              ),



            ],
          ),
        ),
             SizedBox(height: 3.h,),
          Row(
            children: [
              DefaultText(text:AppString.about
                ,color: AppColor.grey1,
              ),
              Spacer(),
              DefaultText(text:AppString.edit
                ,color: AppColor.blue,),


            ],
          ),
          SizedBox(height: 3.h,),
          DefaultText(text:AppString.aboutMe
            ,color: AppColor.grey1,
            height: 1.4,
          ),




        ],
         ),
    )
    ),
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.5.h),
             child: DefaultText(text: AppString.general,color: AppColor.grey,fontSize:11.sp,),
           ),
           Container(
             height: 53.h,
             width: double.infinity,
             color: AppColor.white0,
             child: Padding(
               padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.h),
               child: ListView.separated(
                   itemBuilder: (context, index) => profile(ProfileModel.profile[index]),
                   separatorBuilder: (context,index)=>Divider(),
                   itemCount: ProfileModel.profile.length
               )),
             ),
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.5.h),
             child: DefaultText(text: AppString.others,color: AppColor.grey,fontSize:11.sp,),
           ),
           Container(
             height: 50.h,
             width: double.infinity,
             color: AppColor.white0,
             child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.h),
                 child: ListView.separated(
                     itemBuilder: (context, index) =>Column(
                       children: [
                         SizedBox(height: 1.3.h,),
                         Row(

                           children: [

                             DefaultText(text:other[index],fontSize: 11.sp,

                             color: AppColor.darkBlue,

                             ),

                             Spacer(),

                             AppIcons.arrowForward

                           ],

                         ),
                         SizedBox(height: 1.3.h,),
                       ],
                     ),

                     separatorBuilder: (context,index)=>Divider(),
                     itemCount: other.length
                 )),
           ),


         ]),
     )

    );
  }
}
