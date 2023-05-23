import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../model/type_work_model.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/routes.dart';
import '../../widgets/create_account_widget/work_type_item.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';

class TypeWork extends StatelessWidget {
  const TypeWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.h),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  DefaultText(text: AppString.text1InTypeWork,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
                  buildSizedBox(height: 1.1.h,),
                  DefaultText(text:AppString.text2InTypeWork,fontSize: 11.sp,
                    color: AppColor.grey,
                  ),
                  buildSizedBox(height: 4.h,),
                  Expanded(
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 20,
                        ),
                        itemBuilder:(context, index) =>workTypeItem(TypeWorkModel.type[index]),
                      itemCount: TypeWorkModel.type.length,
                    ),
                  ),
                  MainButton(
                    text: AppString.next ,
                    onTap: (){
                      Navigator.pushNamed(context, AppRoutes.locationPageRoute);
                    },
                    colorBox: AppColor.blue,),


                ]
            ),
          ),
        )
    );
  }
}



