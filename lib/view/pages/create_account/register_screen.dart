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

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding:  EdgeInsets.only(left: 4.w),
            child: IconButton(icon: AppIcons.back,color: AppColor.darkGrey,
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
                        DefaultText(text: AppString.text1InRegister,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
                        SizedBox(height: 1.1.h,),
                        DefaultText(text:AppString.text2InRegister,fontSize: 11.sp,
                          color: AppColor.grey,
                        ),
                        SizedBox(height: 6.h,),
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
                            prefixIcon: AppIcons.email,
                            hintText: AppString.email,
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value){
                              if(value!.isEmpty){
                                return AppString.emailNotEmpty;
                              }
                              if(!AppString.emailExp.hasMatch(value))
                              {
                                return AppString.enterValidEmail;
                              }
                              else{
                                return null;
                              }
                            }),


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
                        SizedBox(height: 2.h,),
                        DefaultText(text: AppString.passwordValidation,fontSize: 11.sp,color:AppColor.lightGrey ,),
                        // color:passwordController.value.text.length<8?Colors.orange:AppColor.lightGrey),
                        SizedBox(height: 10.7.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DefaultText(text: AppString.haveAccount,fontSize: 10.sp,color: AppColor.lightGrey),
                            TextButton(onPressed: (){
                              Navigator.pushNamed(context, AppRoutes.loginPageRoute);
                            }, child:
                            DefaultText(text:AppString.login ,fontSize: 10.sp,color: AppColor.blue,)

                            ),

                          ],
                        ),
                        MainButton(
                            text: AppString.createAccount,
                            color: AppColor.grey,
                            onTap: () {
                              if(formKey.currentState!.validate()){
                                Navigator.pushNamed(context, AppRoutes.typeWorkPageRoute);

                              }
                            }
                            ,
                            colorBox:AppColor.white  ),
                        SizedBox(height: 2.6.h),
                        Row(
                          children: [
                            Expanded(child: Divider(color:AppColor.white,thickness: 1.5)),
                            DefaultText(text: AppString.orSignUp,fontSize: 10.sp,color:AppColor.grey,),
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