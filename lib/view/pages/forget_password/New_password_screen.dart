import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/color.dart';
import 'package:jop_finder/view/utilities/icon.dart';
import 'package:jop_finder/view/utilities/routes.dart';
import 'package:jop_finder/view/widgets/custom_widget/default_formfield.dart';
import 'package:jop_finder/view/widgets/custom_widget/default_text.dart';
import 'package:jop_finder/view/widgets/custom_widget/main_button.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/assets.dart';

class NewPassword extends StatelessWidget {
  NewPassword({Key? key}) : super(key: key);
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();

  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding:  EdgeInsets.only(left: 4.w),
            child: IconButton(icon: Icon(Icons.arrow_back,color: AppColor.darkGrey,),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
          actions: [
            Padding(
              padding:  EdgeInsets.only(right:6.w ),
              child: Image.asset(AppAssets.splashing,width: 20.25.w,height: 2.5.h,),
            )
          ],
        ),
        body:
        SingleChildScrollView(
            child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 6.w),
                child: Form(
                  key: formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultText(text: AppString.text1InPassword,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
                        SizedBox(height: 1.1.h,),
                        DefaultText(text:AppString.text2InPassword,fontSize: 11.sp,
                          color: AppColor.grey,
                        ),
                        SizedBox(height: 6.h,),
                        DefaultFormField(
                          prefixIcon:AppIcons.lock,
                          hintText: AppString.password,
                          suffixIcon: AppIcons.eye,
                          controller: passwordController,
                          validator: (value){
                            if(value!.isEmpty){
                              return AppString.passwordNotEmpty;
                            }
                            else {
                              return null;
                            }
                          },

                        ),
                        SizedBox(height: 2.h,),
                        DefaultFormField(
                          prefixIcon:AppIcons.lock,
                          hintText: AppString.password,
                          suffixIcon: AppIcons.eye,
                          controller: passwordController,
                          validator: (value){
                            if(value!.isEmpty){
                              return AppString.passwordNotEmpty;
                            }
                            else {
                              return null;
                            }
                          },

                        ),
                        SizedBox(height: 43.h,),
                        MainButton(
                            text: AppString.resetPassword,
                            onTap: () {
                              if(formKey.currentState!.validate()){
                                Navigator.pushNamed(context, AppRoutes.passwordSuccessPageRoute);

                              }
                            }
                            ,
                            colorBox:AppColor.blue  ),


                      ]),
                )
            ))
    );


  }
}
