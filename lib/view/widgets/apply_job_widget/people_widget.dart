import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
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
    buildSizedBox(height: 3.h,),
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
              buildSizedBox(height: 1.h,),
              DefaultText(
                text: AppString.uiDesign,
                color: AppColor.grey2,
              ),
            ],
          ),
          buildSpacer(),
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
    buildSizedBox(height: 3.h,),
    Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) =>employee(EmployeeModel.emp[index]) ,
          separatorBuilder:(context, index) => buildDivider(thickness: 2,),
          itemCount: EmployeeModel.emp.length),
    )
  ],
);
