import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';

class DataSuccessfully extends StatelessWidget {
  const DataSuccessfully({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
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
    body:Padding(
      padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
      child: Column(
        children: [
          buildSizedBox(height: 6.h,),
          Image.asset(AppAssets.dataSuccess,height: 19.h,width: 43.25.w,),
          DefaultText(text:AppString.tex1IndataSuccess,fontSize: 16.5.sp,
            fontWeight: FontWeight.w500,
            color: AppColor.darkBlue,
          ),
          buildSizedBox(height: 3.h,),
          DefaultText(text:AppString.tex2IndataSuccess
            ,color: AppColor.grey1,height: 1.4,
          ),
           buildSpacer(),
          MainButton(
              text: AppString.backHome,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.homePageRoute);
              }
              ,
              colorBox:AppColor.blue  ),


        ],
      ),
    ),
    );}}