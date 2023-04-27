import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../utilities/routes.dart';
import '../../widgets/default_formfield.dart';
import '../../widgets/default_text.dart';
import '../../widgets/main_button.dart';

class ResetPassword extends StatelessWidget {
   ResetPassword({Key? key}) : super(key: key);
  TextEditingController emailController=TextEditingController();
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
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child:Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 3.h,),
                  DefaultText(text: AppString.text1InRePassword,fontSize: 19.sp,fontWeight: FontWeight.w500,color:  AppColor.darkBlue,),
                  SizedBox(height: 1.1.h,),
                  DefaultText(text:AppString.text2InRePassword,fontSize: 11.sp,
                    color: AppColor.grey,
                  ),
                  SizedBox(height: 6.h,),
                  DefaultFormField(
                      prefixIcon: AppIcons.email,
                      hintText: AppString.emailReset,
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
                  SizedBox(height: 40.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(text: AppString.rememberPassword,fontSize: 10.sp,color: AppColor.lightGrey),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, AppRoutes.loginPageRoute);
                      }, child:
                      DefaultText(text:AppString.login ,fontSize: 10.sp,color: AppColor.blue,)

                      ),

                    ],
                  ),
                  MainButton(
                      text: AppString.reqPassword,
                      onTap: () {
                        if(formKey.currentState!.validate()){
                          Navigator.pushNamed(context, AppRoutes.checkEmailPageRoute);
                        }

                      }
                      ,
                      colorBox:AppColor.blue  ),


                ],
      ),
            ),
          )),

    );
  }
}
