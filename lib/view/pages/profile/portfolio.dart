import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/assets.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';


class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

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
          text:AppString.portfolioP,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultText(text:AppString.addPortfolio,fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.darkBlue,
            ),
            SizedBox(height: 3.h,),
            Container(
                height: 30.h,
                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.white)
                ),
                child:Padding(
                  padding:  EdgeInsets.symmetric(vertical: 1.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      CircleAvatar(radius: 25,
                          child: AppIcons.uploadFile),
                      DefaultText(text:AppString.uploadOtherFile,fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.darkBlue,
                      ),
                      DefaultText(text:AppString.maxSize
                        ,color: AppColor.grey1,),
                      MainButton(
                          text: AppString.addFile,
                          onTap: () {

                          }
                          ,
                          colorBox:AppColor.blue  ),


                    ],
                  ),
                )
            ),
            SizedBox(height: 3.h,),
            Container(
              height: 10.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColor.white)
              ),
              child: Row(
                children: [
                  Image.asset(AppAssets.pdf,height: 4.5.h,width: 6.75.w,),
                  SizedBox(width: 3.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(text:AppString.cvPdf,
                        fontWeight: FontWeight.w500,
                        color: AppColor.darkBlue,
                      ),
                      SizedBox(height: 1.h,),

                      DefaultText(text:'${AppString.cv}.${AppString.sizePdf}'
                        ,color: AppColor.grey1,),

                    ],
                  ),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon: AppIcons.edit),
                  AppIcons.cancel,
                ],
              ),
            ),
          ],
        ),
      )


    );
  }
}
