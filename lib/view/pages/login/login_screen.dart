import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/color.dart';
import 'package:jop_finder/view/utilities/icon.dart';
import 'package:jop_finder/view/utilities/routes.dart';
import 'package:jop_finder/view/widgets/default_formfield.dart';
import 'package:jop_finder/view/widgets/default_text.dart';
import 'package:jop_finder/view/widgets/main_button.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/assets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
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
                        SizedBox(height: 5.5.h,),
                        DefaultText(text: AppString.text1InLogin,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
                        SizedBox(height: 1.1.h,),
                        DefaultText(text:AppString.text2InLogin,fontSize: 11.sp,
                          color: AppColor.grey,
                        ),
                        SizedBox(height: 5.5.h,),
                        DefaultFormField(
                          prefixIcon:AppIcons.userName ,
                          hintText: AppString.userName,
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          validator: (value){
                            if(value!.isEmpty){
                              return AppString.nameNotEmpty;
                            }
                            return null;

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
                        SizedBox(height: 1.h,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           TextButton(onPressed: (){
                             Navigator.pushNamed(context, AppRoutes.resetPasswordPageRoute);
                           },
                               child: DefaultText(text: AppString.forgetPassword,color:AppColor.blue ,))
                         ],
                       ),
                       SizedBox(height: 10.7.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DefaultText(text: AppString.notHaveAccount,fontSize: 10.sp,color: AppColor.lightGrey),
                            TextButton(onPressed: (){
                              Navigator.pushNamed(context, AppRoutes.registerPageRoute);
                            }, child:
                            DefaultText(text:AppString.register ,fontSize: 10.sp,color: AppColor.blue,)

                            ),

                          ],
                        ),
                        MainButton(
                            text: AppString.login,
                            color: AppColor.grey,
                            onTap: () {
                              if(formKey.currentState!.validate()){
                                Navigator.pushNamed(context, AppRoutes.homePageRoute);

                              }
                            }
                            ,
                            colorBox:AppColor.white  ),
                        SizedBox(height: 2.6.h),
                        Row(
                          children: [
                            Expanded(child: Divider(color:AppColor.white,thickness: 1.5)),
                            DefaultText(text: AppString.orLogin,fontSize: 10.sp,color:AppColor.grey,),
                            Expanded(child: Divider(color:AppColor.white,thickness: 1.5)),
                          ],
                        ),
                        SizedBox(height: 2.6.h),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: AppColor.white
                                      )
                                  ),
                                  height: 6.h,
                                  width: 38.5.w,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(AppAssets.google,height: 2.h,width: 4.w,),
                                      SizedBox(width: 2.w),
                                      DefaultText(text: AppString.google,fontSize: 10.sp,color:AppColor.blueGrey,fontWeight: FontWeight.w500,)
                                    ],
                                  ),
                                ),
                              ),),

                            SizedBox(width: 5.w),
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: AppColor.white
                                      )
                                  ),
                                  height: 6.h,
                                  width: 38.5.w,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(AppAssets.facebook,height: 2.7.h,width: 4.w,),
                                      SizedBox(width: 2.w),
                                      DefaultText(text: AppString.facebook,fontSize: 10.sp,color:AppColor.blueGrey,fontWeight: FontWeight.w500,)
                                    ],
                                  ),
                                ),
                              ),
                            )

                          ],
                        ),

                      ]),
                )
            ))
    );


  }
}

