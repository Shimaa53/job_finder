import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../model/type_work_model.dart';
import '../../utilities/color.dart';
import '../custom_widget/default_text.dart';

Widget workTypeItem(TypeWorkModel typeWork)=>
    InkWell(
      child: Container(
        // height: 15.3.h,
        // width: 39.w,
        padding: EdgeInsets.symmetric(horizontal: 3.5.w,vertical: 1.5.h),
        decoration: BoxDecoration(
            color: AppColor.white1,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColor.white,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: AppColor.white,
              child: CircleAvatar(
                  radius: 24,
                  backgroundColor: AppColor.white1,
                  child: Image.asset(
                    typeWork.image,
                    height: 3.2.h,
                    width: 6.w,
                    color: AppColor.darkGrey,
                  )),
            ),
            buildSizedBox(
              height: 2.h,
            ),
            DefaultText(
              text: typeWork.text,
              color: AppColor.darkBlue,
              fontSize: 11.sp,
            ),
          ],
        ),
      ),
    );