import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jop_finder/controller/cubit/bottom/job_cubit.dart';
import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:jop_finder/view/utilities/color.dart';
import 'package:jop_finder/view/utilities/icon.dart';
import 'package:jop_finder/view/widgets/company_widget.dart';
import 'package:jop_finder/view/widgets/default_text.dart';
import 'package:jop_finder/view/widgets/description_widget.dart';
import 'package:jop_finder/view/widgets/people_widget.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/routes.dart';
import '../../widgets/main_button.dart';

class DataSuccessfully extends StatelessWidget {

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
    body:Padding(
      padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
      child: Column(
        children: [
          SizedBox(height: 6.h,),
          Image.asset(AppAssets.dataSuccess,height: 19.h,width: 43.25.w,),
          DefaultText(text:AppString.tex1IndataSuccess,fontSize: 16.5.sp,
            fontWeight: FontWeight.w500,
            color: AppColor.darkBlue,
          ),
          SizedBox(height: 3.h,),
          DefaultText(text:AppString.tex2IndataSuccess
            ,color: AppColor.grey1,height: 1.4,
          ),
          Spacer(),
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