import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_finder/view/utilities/enums.dart';
import 'package:sizer/sizer.dart';

import '../../../controller/data/local/shared.dart';
import '../../utilities/assets.dart';
import '../../utilities/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        MyCache.getBoolean(key: MyCacheKeys.isOnBoarding)==false?
            ()=>Navigator.pushReplacementNamed(context, AppRoutes.onBoardingRoute)
            :()=>Navigator.pushReplacementNamed(context, AppRoutes.homePageRoute)
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
            Center(child: Image.asset(AppAssets.backgroundSplashing)),
            Center(child: Image.asset(AppAssets.splashing,height: 4.5.h,width: 35.25.w,)),
          ],
        )

    );
  }
}
