import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_text.dart';

class Security extends StatelessWidget {
  const Security({Key? key}) : super(key: key);

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
          text:AppString.security,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),
      ),

    );
  }
}
