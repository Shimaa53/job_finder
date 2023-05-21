import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../controller/cubit/bottom/job_cubit.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_text.dart';

class Security extends StatelessWidget {
  const Security({Key? key}) : super(key: key);
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
          text:AppString.security,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSizedBox(height: 1.5.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w),
            child: DefaultText(text: AppString.accountAccess,color: AppColor.grey,fontSize:11.sp,),
          ),
          buildSizedBox(height: 1.5.h,),
          Expanded(
              child: Container(
                width: double.infinity,
                color: AppColor.white0,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 1.5.h),
                  child: ListView.separated(itemBuilder: (context, index) =>InkWell(
                    onTap: (){
                      if(index==0){
                        Navigator.pushNamed(context, AppRoutes.emailAddressPageRoute);
                      }
                      else if(index==1){
                        Navigator.pushNamed(context, AppRoutes.phoneNumberPageRoute);
                      }
                      else if(index==2){
                        Navigator.pushNamed(context, AppRoutes.changePasswordPageRoute);

                      }else if(index==3){
                        Navigator.pushNamed(context, AppRoutes.verificationPageRoute);
                      }

                    },
                    child: ListTile(
                        leading: DefaultText(text:JobCubit.accountAccess[index],
                          color: AppColor.darkBlue,
                          fontSize:11.sp,),
                        trailing: AppIcons.arrowForward

                    ),
                  ), separatorBuilder: (BuildContext context, int index) =>buildDivider(thickness: 1.5,),
                    itemCount: JobCubit.accountAccess.length,
                  ),
                )
              ))
        ],
),
    );
  }
}
