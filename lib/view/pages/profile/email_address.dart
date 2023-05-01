import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';

class EmailAddress extends StatelessWidget {
  const EmailAddress({Key? key}) : super(key: key);

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
          onPressed: () {
            Navigator.pop(context);
          },),
        title: DefaultText(
          text:AppString.emailAddress,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),

      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          DefaultText(text:AppString.mainEmail,
                    fontWeight: FontWeight.w500,
                    color: AppColor.darkBlue,
                  ),
            SizedBox(height: 2.h,),
            DefaultFormField(
                prefixIcon: AppIcons.email,
                keyboardType: TextInputType.emailAddress,
                ),
            Spacer(),
            MainButton(
                text: AppString.save,
                onTap: () {

                }
                ,
                colorBox:AppColor.blue  ),

          ],
        ),
      ),
    );
  }
}
