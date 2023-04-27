import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:jop_finder/view/utilities/routes.dart';
import 'package:jop_finder/view/widgets/type_of_work_widget.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/default_formfield.dart';
import '../../widgets/default_text.dart';
import '../../widgets/main_button.dart';

class ApplyJob extends StatelessWidget {
   ApplyJob({Key? key}) : super(key: key);
  List<String>typeOfWork=[
    AppString.sUxDesign,
    AppString.sUiDesign,
    AppString.graphicDesigner,
    AppString.FEDevelper

  ];

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
          text:AppString.applyJob,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: AppColor.lightGrey,
                      child: CircleAvatar(
                        radius: 27,
                        child:DefaultText(
                          text:AppString.one,
                          color: AppColor.lightGrey,
                        ),
                        backgroundColor:AppColor.white,

                      ),
                    ),
                    SizedBox(height: 1.h,),
                    DefaultText(text:AppString.biodate,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkBlue,
                    ),

                  ],
                ),
                SizedBox(width: 2.w,),
                DefaultText(text: AppString.line,color: AppColor.lightGrey,),
                SizedBox(width: 2.w,),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: AppColor.lightGrey,
                      child: CircleAvatar(
                        radius: 27,
                        child:DefaultText(
                          text:AppString.two,
                          color: AppColor.lightGrey,
                        ),
                        backgroundColor:AppColor.white,

                      ),
                    ),
                    SizedBox(height: 1.h,),
                    DefaultText(text:AppString.typeOfWork,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkBlue,
                    ),

                  ],
                ),
                SizedBox(width: 2.w,),
                DefaultText(text: AppString.line,color: AppColor.lightGrey,),
                SizedBox(width: 2.w,),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: AppColor.lightGrey,
                      child: CircleAvatar(
                        radius: 27,
                        child:DefaultText(
                          text:AppString.three,
                          color: AppColor.lightGrey,
                        ),
                        backgroundColor:AppColor.white,

                      ),
                    ),
                    SizedBox(height: 1.h,),
                    DefaultText(text:AppString.upLoadPortFolio,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkBlue,
                    ),

                  ],
                ),


              ],
            ),
            SizedBox(height: 3.h,),
            DefaultText(text:AppString.upLoadPortFolio,fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.darkBlue,
            ),
            DefaultText(text:AppString.fillBio
              ,color: AppColor.grey1,),
            SizedBox(height: 3.h,),
            Row(
              children: [
                DefaultText(text:AppString.uploadCv,
                  fontWeight: FontWeight.w500,
                  color: AppColor.darkBlue,
                ),
                DefaultText(text: AppString.astrik,color: AppColor.danger,)
              ],
            ),
            SizedBox(height: 1.h,),
            Container(
               height: 10.h,
               padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
               decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(8),
               border: Border.all(color: AppColor.white)
               ),
              child: Row(
                children: [
                  Image.asset(AppAssets.pdf,height: 4.5.h,width: 6.75.w,),
                  SizedBox(width: 3.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(text:AppString.cvPdf,
                        fontWeight: FontWeight.w500,
                        color: AppColor.darkBlue,
                      ),
                      SizedBox(height: 1.h,),

                      DefaultText(text:'${AppString.cv}.${AppString.sizePdf}'
                        ,color: AppColor.grey1,),

                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: AppIcons.edit),
                  AppIcons.cancel,
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            DefaultText(text:AppString.otherFile,fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.darkBlue,
            ),
            SizedBox(height: 1.h,),
            Container(
              height: 30.h,
            padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColor.white)
              ),
            child:Padding(
              padding:  EdgeInsets.symmetric(vertical: 1.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  CircleAvatar(radius: 25,
                      child: AppIcons.uploadFile),
                  DefaultText(text:AppString.uploadOtherFile,fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlue,
                  ),
                  DefaultText(text:AppString.maxSize
                    ,color: AppColor.grey1,),
                  MainButton(
                      text: AppString.addFile,
                      onTap: () {

                      }
                      ,
                      colorBox:AppColor.blue  ),


                ],
              ),
            )
            ),


            Spacer(),
            MainButton(
                text: AppString.submit,
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.dataSuccessPageRoute);
                }
                ,
                colorBox:AppColor.blue  ),

//one
//             DefaultText(text:AppString.biodate,fontSize: 13.sp,
//               fontWeight: FontWeight.w500,
//               color: AppColor.darkBlue,
//             ),
//             DefaultText(text:AppString.fillBio
//               ,color: AppColor.grey1,),
//             SizedBox(height: 3.h,),
//             Row(
//               children: [
//                 DefaultText(text:AppString.fullName,
//                   fontWeight: FontWeight.w500,
//                   color: AppColor.darkBlue,
//                 ),
//                 DefaultText(text: AppString.astrik,color: AppColor.danger,)
//               ],
//             ),
//             SizedBox(height: 1.h,),
//             DefaultFormField(
//               prefixIcon: AppIcons.userName,
//             ),
//             SizedBox(height: 2.h,),
//             Row(
//               children: [
//                 DefaultText(text:AppString.email,
//                   fontWeight: FontWeight.w500,
//                   color: AppColor.darkBlue,
//                 ),
//                 DefaultText(text: AppString.astrik,color: AppColor.danger,)
//
//               ],
//             ),
//             SizedBox(height: 1.h,),
//             DefaultFormField(
//               prefixIcon: AppIcons.email,
//             ),
//             SizedBox(height: 2.h,),
//             Row(
//               children: [
//                 DefaultText(text:AppString.noHandphone,
//                   fontWeight: FontWeight.w500,
//                   color: AppColor.darkBlue,
//                 ),
//                 DefaultText(text: AppString.astrik,color: AppColor.danger,)
//
//               ],
//             ),
//             SizedBox(height: 1.h,),
//             DefaultFormField(
//               prefixIcon: AppIcons.applied,
//             ),
//             Spacer(),
//             MainButton(
//                 text: AppString.next,
//                 onTap: () {
//
//                 }
//                 ,
//                 colorBox:AppColor.blue  ),

            //  ----------------
            // two محتاجه تعديل
            // DefaultText(text:AppString.typeOfWork,fontSize: 13.sp,
            //   fontWeight: FontWeight.w500,
            //   color: AppColor.darkBlue,
            // ),
            // DefaultText(text:AppString.fillBio
            //   ,color: AppColor.grey1,),
            // SizedBox(height: 3.h,),

            // Card(
            //   child: TypeOfWork(index),
            // ),



          ],
        ),
      ),

    );
  }
}
