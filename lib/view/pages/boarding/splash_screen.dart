import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/assets.dart';
import '../../utilities/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  // bool loading=true;
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacementNamed(context, AppRoutes.onBoardingRoute)

      //     Navigator.pushReplacement(context, MaterialPageRoute(
      // builder: (context) =>  OnBoardingScreen()))

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
