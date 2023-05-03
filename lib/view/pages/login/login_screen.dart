import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/controller/cubit/bottom/job_cubit.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../controller/data/local/shared.dart';
import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/enums.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController nameController=TextEditingController(text: MyCache.getString(key: MyCacheKeys.name));

  TextEditingController passwordController=TextEditingController(text: MyCache.getString(key: MyCacheKeys.password));

  final formKey=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                              buildSizedBox(height: 5.5.h,),
                              DefaultText(text: AppString.text1InLogin,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.darkBlue,),
                              buildSizedBox(height: 1.1.h,),
                              DefaultText(
                                text: AppString.text2InLogin, fontSize: 11.sp,
                                color: AppColor.grey,
                              ),
                              buildSizedBox(height: 5.5.h,),
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
                                obScure: cubit.obScure,
                                prefixIcon: AppIcons.lock,
                                hintText: AppString.password,
                                suffixIcon: IconButton(
                                  icon: cubit.icon,
                                  onPressed: (){
                                  cubit.visibility();
                                  },
                                ),
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
                              buildSizedBox(height: 1.h,),
                              Row(
                                children: [
                                  Checkbox(

                                    value: cubit.isChecked,
                                    onChanged: (newValue){
                                      cubit.CheckBox(newValue);
                                    },
                                    activeColor: AppColor.blue,
                                    tristate: true,
                                  ),
                                  DefaultText(
                                    text: AppString.rememberMe,
                                    color: AppColor.blue3,),
                                  buildSpacer(),
                                  TextButton(onPressed: () {
                                    Navigator.pushNamed(context,
                                        AppRoutes.resetPasswordPageRoute);
                                  },
                                      child: DefaultText(
                                        text: AppString.forgetPassword,
                                        color: AppColor.blue,))
                                ],
                              ),
                              buildSizedBox(height: 10.7.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultText(text: AppString.notHaveAccount,
                                      fontSize: 10.sp,
                                      color: AppColor.lightGrey),
                                  TextButton(onPressed: () {
                                    Navigator.pushNamed(
                                        context, AppRoutes.registerPageRoute);
                                  }, child:
                                  DefaultText(text: AppString.register,
                                    fontSize: 10.sp,
                                    color: AppColor.blue,)

                                  ),

                                ],
                              ),
                              MainButton(
                                  text: AppString.login,
                                  color: AppColor.grey,
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      MyCache.putString(key: MyCacheKeys.name, value: nameController.text);
                                      MyCache.putString(key: MyCacheKeys.password, value: passwordController.text);

                                      Navigator.pushNamed(
                                          context, AppRoutes.homePageRoute);
                                    }
                                  }
                                  ,
                                  colorBox: AppColor.white),
                              buildSizedBox(height: 2.6.h),
                              Row(
                                children: [
                                  Expanded(child: buildDivider(
                                      color: AppColor.white, thickness: 1.5)),
                                  DefaultText(text: AppString.orLogin,
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