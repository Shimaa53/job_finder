import 'package:flutter/material.dart';
import 'package:job_finder/view/utilities/routes.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_text.dart';

class CompleteProfile extends StatelessWidget {
   CompleteProfile({Key? key}) : super(key: key);
List<String>title=[AppString.personalDetails,AppString.education,AppString.experience,AppString.portfolioP];
List<String>details=[AppString.detailsPersonal,AppString.educationHistory,AppString.workExperience,AppString.createPortfolio];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white0,
        leading: IconButton(
          icon: AppIcons.back,
          color: AppColor.darkGrey,
          onPressed: () {
            Navigator.pop(context);
          },),
        title: DefaultText(
          text:AppString.completeProfile,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),
      ),
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.5.h),
        child: Column(
          children: [
            CircleAvatar(radius: 60,),
            buildSizedBox(height: 2.h),
            DefaultText(text:AppString.completedRate,
              color: AppColor.blue,
              fontWeight: FontWeight.w500,
              fontSize:11.sp,),
            buildSizedBox(height: 2.h),
            DefaultText(text:AppString.completeBefore,
              color: AppColor.grey,
              fontWeight: FontWeight.w500,
              fontSize:11.sp,),
            buildSizedBox(height: 4.h),
        Expanded(
          child: ListView.separated(itemBuilder: (context,index)=>
              InkWell(
                onTap: (){
                  if(index==0){
                    Navigator.pushNamed(context, AppRoutes.editPageRoute);
                  }
                  else if(index==1){
                    Navigator.pushNamed(context, AppRoutes.educationPageRoute);
                  }
                  else if(index==2){
                    Navigator.pushNamed(context, AppRoutes.experiencePageRoute);
                  }
                  else if(index==3){
                    Navigator.pushNamed(context, AppRoutes.portfolioPageRoute);
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColor.white)
                  ),
                  child:ListTile(
                    leading:AppIcons.checkCircle,
                    title:DefaultText(text:title[index],
                      color: AppColor.darkBlue,
                      fontWeight: FontWeight.w500,
                      fontSize:11.sp,) ,
                    subtitle: DefaultText(text:AppString.detailsPersonal,
                      fontSize: 10.sp,
                    ),
                    trailing: AppIcons.arrowForward,
                  ),
                ),
              ),
              separatorBuilder: (context,index)=>buildSizedBox(
                height: 3.h,
                  child: VerticalDivider(color: AppColor.white,thickness: 1)),
              itemCount: title.length),
        )

          ],
        ),
      ),

    );
  }
}
