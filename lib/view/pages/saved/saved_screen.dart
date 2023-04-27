import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:jop_finder/view/utilities/color.dart';
import 'package:jop_finder/view/widgets/save_job_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../model/select_job_model.dart';
import '../../utilities/app_string.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/default_text.dart';

class SavedScreen extends StatelessWidget {
   SavedScreen({Key? key}) : super(key: key);
static  var scaffoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: AppColor.white0,
        leading: IconButton(
          icon: AppIcons.back,
          color: AppColor.darkGrey,
          onPressed: () {  },),
        title: DefaultText(
          text:AppString.saved,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),

      ),
    // body: Padding(
    //   padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
    //   child: Center(
    //     child: Column(
    //       children: [
    //         SizedBox(height: 13.h,),
    //         Image.asset(AppAssets.saved,height: 19.h,width: 43.25.w,),
    //         SizedBox(height: 3.h,),
    //         DefaultText(text:AppString.text1InSaved,fontSize: 16.5.sp,
    //           fontWeight: FontWeight.w500,
    //           color: AppColor.darkBlue,
    //         ),
    //         SizedBox(height: 1.h,),
    //         DefaultText(text:AppString.text2InSaved
    //           ,color: AppColor.grey1,height: 1.4,
    //         ),
    //
    //
    //
    //       ],
    //     ),
    //   ),
    // ),
      body: Column(
        children: [
          SizedBox(height: 0.7.h,),
          Center(
            child: DefaultText(text:'${AppString.number}${AppString.jobSaved}'
              ,color: AppColor.grey1,),
          ),
          SizedBox(height: 0.7.h,),
        Expanded(
          child: ListView.separated(
              itemBuilder:(context, index) =>  SaveJob(SelectJobModel.selectJob[index]),
              separatorBuilder: (context,index)=>Divider(thickness: 1,),
              itemCount: SelectJobModel.selectJob.length),
        )




    ],
      ),
    );
  }
}
