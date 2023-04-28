import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../model/employee_model.dart';
import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../custom_widget/default_text.dart';
import 'employee_widget.dart';

Widget people()=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 3.h,),
    Row(
        children:[
          Column(
            children: [
              DefaultText(
                text: AppString.employee,
                color: AppColor.darkBlue,
                fontWeight: FontWeight.w500,
                fontSize: 10.5.sp,
              ),
              SizedBox(height: 1.h,),
              DefaultText(
                text: AppString.uiDesign,
                color: AppColor.grey2,
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 6.h,
            padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                border: Border.all(color: AppColor.white)
            ),
            child:  Row(
              children: [
                DefaultText(text: AppString.uiDesigner,
                  color: AppColor.darkGrey,
                ),
                IconButton(onPressed: (){}, icon: AppIcons.down)
              ],
            ),
          ),

        ]
    ),
    SizedBox(height: 3.h,),
    Row(
      children: [
        Image.asset(AppAssets.photo1,height: 5.h,width: 9.5.w,),
        SizedBox(width: 2.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(
              text: AppString.name1,
              color: AppColor.darkBlue,
              fontWeight: FontWeight.w500,
              fontSize: 10.5.sp,
            ),
            SizedBox(height: 1.h,),
            DefaultText(
              text:'${AppString.sUiDesign} at ${AppString.twitter}',
              color: AppColor.grey2,
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            DefaultText(
              text: AppString.workDuring,
              color: AppColor.grey2,
            ),
            SizedBox(height: 1.h,),
            DefaultText(
              text: AppString.year5,
              color: AppColor.blue,
            ),
          ],
        ),

      ],
    ),
    Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) =>employee(EmployeeModel.emp[index]) ,
          separatorBuilder:(context, index) => Divider(thickness: 2,),
          itemCount: EmployeeModel.emp.length),
    )
  ],
);
