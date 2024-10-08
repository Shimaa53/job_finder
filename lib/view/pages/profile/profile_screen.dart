import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../model/profile_model.dart';
import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/profile_widget/profile_widget.dart';

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
             clipBehavior: Clip.none,
             children: [
               Container(
                  height: 17.h,
                  width: double.infinity,
                  color: AppColor.babyBlue,

               ),
               Positioned(
                 top: 11.h,
                   left: 37.w,
                   child: Image.asset(AppAssets.profile,height:12.h,width:22.5.w)),


             ],
           ),
           Padding(
               padding:  EdgeInsets.symmetric(horizontal: 6.w),
               child: Column(
               children:[
                 buildSizedBox(height: 6.5.h,),
                 DefaultText(text:AppString.myName,fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkBlue,
                    ),
                    buildSizedBox(height: 0.95.h,),
                    DefaultText(text:AppString.sUiDesign
                      ,color: AppColor.grey1,),
                    buildSizedBox(height: 3.h,),
                    Container(
                      height: 12.h,
               width: double.infinity,
                 padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
                 decoration: BoxDecoration(
                     color: AppColor.white0,

                     // color: AppColor.grey3,
                     borderRadius: BorderRadius.circular(8)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       children: [
                         DefaultText(text: AppString.applied,color: AppColor.grey1,),
                         buildSizedBox(height: 1.h,),
                         DefaultText(text:AppString.n46,
                           fontWeight: FontWeight.w500,
                           color: AppColor.darkBlue,
                         ),
                       ],
                     ),
                     VerticalDivider(color: AppColor.white,thickness: 1,),
                     Column(
                       children: [
                         DefaultText(text: AppString.reviewed,color: AppColor.grey1,),
                         buildSizedBox(height: 1.h,),
                         DefaultText(text:AppString.n23,
                           fontWeight: FontWeight.w500,
                           color: AppColor.darkBlue,
                         ),
                       ],
                     ),
                     VerticalDivider(color: AppColor.white,thickness: 1,),
                     Column(
                       children: [
                         DefaultText(text: AppString.contacted,color: AppColor.grey1,),
                         buildSizedBox(height: 1.h,),
                         DefaultText(text:AppString.n16,
                           fontWeight: FontWeight.w500,
                           color: AppColor.darkBlue,
                         ),
                       ],
                     ),



                   ],
                 ),
               ),
                    buildSizedBox(height: 3.h,),
                 Row(
                   children: [
                     DefaultText(text:AppString.about
                       ,color: AppColor.grey1,
                     ),
                     buildSpacer(),
                     DefaultText(text:AppString.edit
                       ,color: AppColor.blue,),


                   ],
                 ),
                 buildSizedBox(height: 3.h,),
                 DefaultText(text:AppString.aboutMe
                   ,color: AppColor.grey1,
                   height: 1.4,
                 ),




               ],
                ),
           ),
           buildSizedBox(height: 2.h,),
           Container(
             height: 5.h,
             width: double.infinity,
             color: AppColor.white0,
             child: Padding(
               padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.5.h),
               child: DefaultText(text: AppString.general,color: AppColor.grey,fontSize:11.sp,),
             ),
           ),
           buildSizedBox(
             height: 53.h,
             width: double.infinity,
             child: Padding(
               padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.h),
               child: ListView.separated(
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                   itemBuilder: (context, index) => InkWell(
                     onTap: (){
                       if(index==0){
                         Navigator.pushNamed(context, AppRoutes.editPageRoute);
                       }
                       else if(index==1){
                         Navigator.pushNamed(context, AppRoutes.portfolioPageRoute);
                       }
                       else if(index==2){
                         Navigator.pushNamed(context, AppRoutes.languagePageRoute);

                       }else if(index==3){
                         Navigator.pushNamed(context, AppRoutes.notificationProfilePageRoute);
                       }
                       else{
                         Navigator.pushNamed(context, AppRoutes.securityPageRoute);

                       }
                     },
                       child: profile(ProfileModel.profile[index],context)),
                   separatorBuilder: (context,index)=>buildDivider(),
                   itemCount: ProfileModel.profile.length
               )),
             ),
           Container(
             height: 5.h,
             width: double.infinity,
             color: AppColor.white0,
             child: Padding(
               padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.5.h),
               child: DefaultText(text: AppString.others,color: AppColor.grey,fontSize:11.sp,),
             ),
           ),
           buildSizedBox(
             height: 50.h,
             width: double.infinity,
             child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.h),
                 child: ListView.separated(
                   shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     itemBuilder: (context, index) =>InkWell(
                       onTap: (){
                         if (index == 1) {
                                Navigator.pushNamed(
                                    context, AppRoutes.helpPageRoute);
                              } else if (index == 2) {
                                Navigator.pushNamed(
                                    context, AppRoutes.termsPageRoute);
                              } else if (index == 3) {
                                Navigator.pushNamed(
                                    context, AppRoutes.privacyPageRoute);
                              }
                            },
                       child: Column(
                         children: [
                           buildSizedBox(height: 1.3.h,),
                           Row(

                             children: [

                               DefaultText(text:other[index],fontSize: 11.sp,

                               color: AppColor.darkBlue,

                               ),

                               buildSpacer(),

                               AppIcons.arrowForward

                             ],

                           ),
                           buildSizedBox(height: 1.3.h,),
                         ],
                       ),
                     ),

                     separatorBuilder: (context,index)=>buildDivider(),
                     itemCount: other.length
                 )),
           ),


         ]),
     )

    );
  }
}
