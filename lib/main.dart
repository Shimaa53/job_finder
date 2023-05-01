import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/view/utilities/router.dart';
import 'package:job_finder/view/utilities/routes.dart';
import 'package:sizer/sizer.dart';
import 'controller/cubit/bottom/job_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark
        ));
      return BlocProvider(
        create: (BuildContext context)=>JobCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  type: BottomNavigationBarType.fixed,

                  elevation: 20.0
              )
          ),
          onGenerateRoute: onGenerate,
          initialRoute: AppRoutes.profilePageRoute,
        ),
      );}
    );
  }
}


