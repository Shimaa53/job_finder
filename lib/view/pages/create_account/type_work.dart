import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jop_finder/model/type_work_model.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:jop_finder/view/utilities/routes.dart';
import 'package:jop_finder/view/widgets/create_account_widget/work_type_item.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';

class TypeWork extends StatelessWidget {
  const TypeWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    SizedBox(height: 4.h,),
                    DefaultText(text: AppString.text1InTypeWork,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
                    SizedBox(height: 1.1.h,),
                    DefaultText(text:AppString.text2InTypeWork,fontSize: 11.sp,
                      color: AppColor.grey,
                    ),
                    SizedBox(height: 6.h,),
                    // Expanded(
                    //   child: GridView.builder(
                    //       gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    //           crossAxisCount: 2,
                    //         crossAxisSpacing: 15,
                    //         mainAxisSpacing: 20
                    //       ),
                    //       itemBuilder:(context, index) =>workTypeItem(TypeWorkModel.type[index]),
                    //     itemCount: TypeWorkModel.type.length,
                    //   ),
                    // ),
                    SizedBox(height: 6.h,),
                    MainButton(
                      text: AppString.next ,
                      onTap: (){
                        Navigator.pushNamed(context, AppRoutes.locationPageRoute);
                      },
                      colorBox: AppColor.blue,),


                  ]
              ),
            ),
          ),
        )
    );
  }
}