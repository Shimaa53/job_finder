import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/cubit/bottom/job_cubit.dart';

class BottomScreen extends StatelessWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocConsumer<JobCubit,JobState>(
          listener: (BuildContext context, state) {  },
          builder: (BuildContext context, Object? state) {
            var cubit=JobCubit.get(context);
            return Scaffold(
              body: Center(
                  child: cubit.screens[cubit.currentIndex]),
              bottomNavigationBar: BottomNavigationBar(
                  items: cubit.bottomItems,
                  currentIndex: cubit.currentIndex,
                  onTap: (index){
                    cubit.changeIndex(index);
                  }
              ),
            );}
      );
  }
}
