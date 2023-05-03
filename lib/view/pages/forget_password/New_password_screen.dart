import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../controller/cubit/bottom/job_cubit.dart';
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


class NewPassword extends StatelessWidget {
  NewPassword({Key? key}) : super(key: key);
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  var confirm;


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
                  var cubit = JobCubit.get(context);
                  return Padding(
                      padding: EdgeInsets.only(left: 6.w,right:6.w,bottom: 4.h,top: 2.h),
                      child: Form(
                        key: formKey,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DefaultText(text: AppString.text1InPassword,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.darkBlue,),
                              buildSizedBox(height: 1.1.h,),
                              DefaultText(text: AppString.text2InPassword,
                                fontSize: 11.sp,
                                color: AppColor.grey,
                              ),
                              buildSizedBox(height: 6.h,),
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
                                  confirm = value;
                                  if (value!.isEmpty) {
                                    return AppString.passwordNotEmpty;
                                  }
                                  else {
                                    return null;
                                  }
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
                                controller: confirmPasswordController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return AppString.passwordNotEmpty;
                                  }
                                  else if (value != confirm) {
                                    return 'password must be same above';
                                  }
                                  else {
                                    return null;
                                  }
                                },

                              ),
                              buildSizedBox(height: 42.h,),
                              MainButton(
                                  text: AppString.resetPassword,
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      MyCache.putString(key: MyCacheKeys.password, value:passwordController.text );
                                      MyCache.putString(key: MyCacheKeys.password, value:confirmPasswordController.text );

                                      Navigator.pushNamed(context,
                                          AppRoutes.passwordSuccessPageRoute);
                                    }
                                  }
                                  ,
                                  colorBox: AppColor.blue),


                            ]),
                      )
                  );
                }))
    );


  }
}
