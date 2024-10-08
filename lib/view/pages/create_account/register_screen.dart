import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/controller/cubit/bottom/job_cubit.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';


class RegisterScreen extends StatelessWidget {

  TextEditingController nameController=TextEditingController();

  TextEditingController emailController=TextEditingController();

  TextEditingController passwordController=TextEditingController();

  final formKey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
            child: BlocBuilder<JobCubit,JobState>(
                builder: (BuildContext context, state) {
                  var cubit=JobCubit.get(context);
                  return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      child: Form(
                        key: formKey,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DefaultText(text: AppString.text1InRegister,
                                fontSize: 19.sp, fontWeight: FontWeight.w500,
                                color: AppColor.darkBlue,),
                              buildSizedBox(height: 1.1.h,),
                              DefaultText(text: AppString.text2InRegister,
                                fontSize: 11.sp,
                                color: AppColor.grey,
                              ),
                              buildSizedBox(height: 6.h,),
                              DefaultFormField(
                                prefixIcon: AppIcons.userName,
                                hintText: AppString.userName,
                                controller: nameController,
                                keyboardType: TextInputType.name,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return AppString.nameNotEmpty;
                                  }
                                  return null;
                                },
                              ),
                              buildSizedBox(height: 2.h,),
                              DefaultFormField(
                                  prefixIcon: AppIcons.email,
                                  hintText: AppString.email,
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return AppString.emailNotEmpty;
                                    }
                                    if (!AppString.emailExp.hasMatch(value)) {
                                      return AppString.enterValidEmail;
                                    }
                                    else {
                                      return null;
                                    }
                                  }),
                              buildSizedBox(height: 2.h,),
                              DefaultFormField(
                                prefixIcon: AppIcons.lock,
                                hintText: AppString.password,
                                suffixIcon: IconButton(
                                  icon: cubit.icon,
                                  onPressed: () {
                                    cubit.visibility();
                                  },
                                ),
                                obScure: cubit.obScure,
                                controller: passwordController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return AppString.passwordNotEmpty;
                                  }
                                  else {
                                    return null;
                                  }
                                },

                              ),
                              buildSizedBox(height: 2.h,),
                              DefaultText(text: AppString.passwordValidation,
                                fontSize: 11.sp,
                                color: AppColor.lightGrey,),
                              // color:passwordController.value.text.length<8?Colors.orange:AppColor.lightGrey),
                              buildSizedBox(height: 10.7.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultText(text: AppString.haveAccount,
                                      fontSize: 10.sp,
                                      color: AppColor.lightGrey),
                                  TextButton(onPressed: () {
                                    Navigator.pushNamed(
                                        context, AppRoutes.loginPageRoute);
                                  }, child:
                                  DefaultText(text: AppString.login,
                                    fontSize: 10.sp,
                                    color: AppColor.blue,)

                                  ),

                                ],
                              ),
                              MainButton(
                                  text: AppString.createAccount,
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      Navigator.pushNamed(
                                          context, AppRoutes.typeWorkPageRoute);
                                    }
                                  }
                                  ,
                                  colorBox: AppColor.blue
                              ),
                              buildSizedBox(height: 2.6.h),
                              Row(
                                children: [
                                  Expanded(child: buildDivider(
                                      color: AppColor.white, thickness: 1.5)),
                                  DefaultText(text: AppString.orSignUp,
                                    fontSize: 10.sp,
                                    color: AppColor.grey,),
                                  Expanded(child: buildDivider(
                                      color: AppColor.white, thickness: 1.5)),
                                ],
                              ),
                              buildSizedBox(height: 2.6.h),
                              Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                8),
                                            border: Border.all(
                                                color: AppColor.white
                                            )
                                        ),
                                        height: 6.h,
                                        width: 38.5.w,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Image.asset(
                                              AppAssets.google, height: 2.h,
                                              width: 4.w,),
                                            buildSizedBox(width: 2.w),
                                            DefaultText(text: AppString.google,
                                              fontSize: 10.sp,
                                              color: AppColor.blueGrey,
                                              fontWeight: FontWeight.w500,)
                                          ],
                                        ),
                                      ),
                                    ),),
                                  buildSizedBox(width: 5.w),
                                  Expanded(
                                    child: InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                8),
                                            border: Border.all(
                                                color: AppColor.white
                                            )
                                        ),
                                        height: 6.h,
                                        width: 38.5.w,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .center,
                                          children: [
                                            Image.asset(
                                              AppAssets.facebook, height: 2.7.h,
                                              width: 4.w,),
                                            buildSizedBox(width: 2.w),
                                            DefaultText(
                                              text: AppString.facebook,
                                              fontSize: 10.sp,
                                              color: AppColor.blueGrey,
                                              fontWeight: FontWeight.w500,)
                                          ],
                                        ),
                                      ),
                                    ),
                                  )

                                ],
                              ),

                            ]),
                      )
                  );
                }))
    );


  }
}