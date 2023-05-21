import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/build_custom_widget.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({Key? key}) : super(key: key);

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
          text:AppString.phoneNumber,
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
            DefaultText(text:AppString.mainPhone,
              fontWeight: FontWeight.w500,
              color: AppColor.darkBlue,
            ),
            buildSizedBox(height: 2.h,),
            DefaultFormField(
              keyboardType: TextInputType.phone,
            ),
            buildSizedBox(height: 2.h,),

            SwitchListTile(
          dense: true,
          value: true,
          onChanged: (bool value) {  },
          title:DefaultText(text:AppString.usePhoneToResetPass
            ,color: AppColor.grey1,),),
            buildSpacer(),
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
