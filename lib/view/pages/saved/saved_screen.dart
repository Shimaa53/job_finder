import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../model/select_job_model.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/saved_widget/save_job_widget.dart';

class SavedScreen extends StatelessWidget {
    SavedScreen({Key? key}) : super(key: key);
static  var scaffoldKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
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
    //         buildSizedBox()(height: 13.h,),
    //         Image.asset(AppAssets.saved,height: 19.h,width: 43.25.w,),
    //         buildSizedBox()(height: 3.h,),
    //         DefaultText(text:AppString.text1InSaved,fontSize: 16.5.sp,
    //           fontWeight: FontWeight.w500,
    //           color: AppColor.darkBlue,
    //         ),
    //         buildSizedBox()(height: 1.h,),
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
          buildSizedBox(height: 0.7.h,),
          Center(
            child: DefaultText(text:'${AppString.number}${AppString.jobSaved}'
              ,color: AppColor.grey1,),
          ),
          buildSizedBox(height: 0.7.h,),
        Expanded(
          child: ListView.separated(
              itemBuilder:(context, index) =>  saveJob(SelectJobModel.selectJob[index]),
              separatorBuilder: (context,index)=>buildDivider(thickness: 1,),
              itemCount: SelectJobModel.selectJob.length),
        )




    ],
      ),
    );
  }
}
