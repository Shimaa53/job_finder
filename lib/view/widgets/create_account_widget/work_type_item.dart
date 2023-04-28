import 'package:flutter/material.dart';
import 'package:jop_finder/model/type_work_model.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/color.dart';
import '../custom_widget/default_text.dart';

Widget workTypeItem(TypeWorkModel typeWork)=>
    Container(
      height: 17.3.h,
      width: 39.w,
      decoration: BoxDecoration(
          color: AppColor.white1,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColor.white,
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.5.w, vertical: 2.7.h),
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
            SizedBox(
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