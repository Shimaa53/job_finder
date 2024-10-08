import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../controller/data/local/shared.dart';
import '../../../model/boarding_model.dart';
import '../../utilities/assets.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/enums.dart';
import '../../utilities/routes.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/custom_widget/main_button.dart';

import '../../widgets/boarding_widget/build_boarding_item.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});


  @override
  State<OnBoardingScreen> createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController boardPageController = PageController();
  bool isLast=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:
        Transform.translate(offset:Offset (6.w,0),
            child: Image.asset(AppAssets.splashing,height: 2.5.h,)),
        leadingWidth: 20.w,

        actions: [Center(child: TextButton(child: DefaultText(text:AppString.skip,color: AppColor.grey,fontSize: 12.sp),
          onPressed: (){
            MyCache.putBoolean(key: MyCacheKeys.isOnBoarding, value: true);
            Navigator.pushReplacementNamed(context, AppRoutes.registerPageRoute);
          },
        )
        ),],
      ),
      body:Column(
          children:[
            Expanded(
              child: PageView.builder(itemBuilder:(context, index) =>buildBoardingItem(boardingList[index]) ,
                itemCount: boardingList.length,
                physics: const BouncingScrollPhysics(),
                controller: boardPageController,
                onPageChanged: (int index){
                  if(index==boardingList.length-1){
                    setState(() {
                      isLast=true;
                    });
                  }else{
                    setState(() {
                      isLast=false;
                    });
                  }
                },
              ),
            ),
            SmoothPageIndicator(controller:boardPageController ,
              count:boardingList.length,
              effect: ScrollingDotsEffect(
                dotColor: AppColor.babyBlue,
                activeDotColor: AppColor.blue,
                dotHeight: 1.h,
                dotWidth: 2.w,
                spacing: 0.75.w,
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4.h),
              child:
              MainButton(
                text:isLast?AppString.start: AppString.next ,
                onTap: (){
                  if(isLast) {
                    MyCache.putBoolean(key: MyCacheKeys.isOnBoarding, value: true);
                    Navigator.pushReplacementNamed(context, AppRoutes.registerPageRoute);
                  }else{
                    boardPageController.nextPage(duration: const Duration(milliseconds: 100), curve: Curves.bounceIn);}

                },colorBox: AppColor.blue,),
            )
          ]
      ),

    );
  }
}