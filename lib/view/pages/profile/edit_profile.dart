import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: AppIcons.back,
            color: AppColor.darkGrey,
            onPressed: () {
              Navigator.pop(context);
            },),
          title: DefaultText(
            text: AppString.editProfile,
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
              Center(
                child: Stack(
                  children: [
                    Image.asset(AppAssets.profile,height:12.h,width:22.5.w),
                    IconButton(onPressed: (){}, icon: AppIcons.camera,color: AppColor.white0,)


                  ],
                ),
              ),
              buildSizedBox(height: 1.h,),
              Center(
                child: DefaultText(text: AppString.changePhoto,
                  color: AppColor.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 11.sp,),
              ),
              buildSizedBox(height: 3.h,),
              DefaultText(text: AppString.name0,color: AppColor.grey1,),
              buildSizedBox(height: 1.h,),
              DefaultFormField(
                hintText: AppString.myName,
                color: AppColor.darkBlue,
                fontWeight: FontWeight.w500,
                fontSize: 11.sp,
              ),
              buildSizedBox(height: 2.h,),
              DefaultText(text: AppString.bio,color: AppColor.grey1,),
              buildSizedBox(height: 1.h,),
              DefaultFormField(
                hintText: AppString.sUiDesign,
                color: AppColor.darkBlue,
                fontWeight: FontWeight.w500,
                fontSize: 11.sp,
              ),
              buildSizedBox(height: 2.h,),
              DefaultText(text: AppString.address,color: AppColor.grey1,),
              buildSizedBox(height: 1.h,),
              DefaultFormField(
                hintText: AppString.addressEdit,
                color: AppColor.darkBlue,
                fontWeight: FontWeight.w500,
                fontSize: 11.sp,
              ),
              buildSizedBox(height: 2.h,),
              DefaultText(text: AppString.noHandPhone,color: AppColor.grey1,),
              buildSizedBox(height: 1.h,),
              DefaultFormField(
                hintText: AppString.numMobile,
                color: AppColor.darkBlue,
                fontWeight: FontWeight.w500,
                fontSize: 11.sp,
              ),

              buildSpacer(),
              MainButton(
                  text: AppString.save,
                  onTap: () {

                  }
                  ,
                  colorBox: AppColor.blue),


            ],
          )
          ,
        )
        ,


    );
  }
}
