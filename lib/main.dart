import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/view/utilities/app_string.dart';
import 'package:job_finder/view/utilities/color.dart';
import 'package:job_finder/view/utilities/enums.dart';
import 'package:job_finder/view/utilities/router.dart';
import 'package:job_finder/view/utilities/routes.dart';
import 'package:sizer/sizer.dart';
import 'controller/bloc_observer.dart';
import 'controller/cubit/bottom/job_cubit.dart';
import 'controller/data/local/shared.dart';
import 'controller/data/remote/data_helper/dio_helper.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await MyCache.init();
  DataHelper.init();
  Bloc.observer = MyBlocObserver();
  //AppString.token=MyCache.getString(key: MyCacheKeys.token);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return BlocProvider(
        create: (BuildContext context)=>JobCubit()..getSuggestData()..getRecentData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: AppColor.transparent,
                statusBarIconBrightness: Brightness.dark,
              ),
              backgroundColor: AppColor.transparent,
              elevation: 0.0,
            ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  type: BottomNavigationBarType.fixed,
                  elevation: 20.0
              )
          ),
          onGenerateRoute: onGenerate,
          initialRoute: AppRoutes.bottomPageRoute,
        ),
      );}
    );
  }
}


