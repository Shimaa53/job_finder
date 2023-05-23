import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/controller/data/remote/data_helper/dio_helper.dart';
import 'package:job_finder/controller/data/remote/data_helper/end_point.dart';

import '../../../model/job_model/login_model.dart';
part 'job_login_state.dart';

class JobLoginCubit extends Cubit<JobLoginState> {
  JobLoginCubit() : super(JobLoginInitial());
  static JobLoginCubit get(context)=>BlocProvider.of(context);
  late JobLoginModel loginModel;
  void userLogin({
  required String email,
    required  String password
})
  {
    emit(JobLoginLoading());
    DataHelper.postData(url: endPoint,
        data: {
          "email":email,
          "password":password
    }).then((value) {
      print(value.data);
      loginModel=JobLoginModel.fromJson(value.data);
      print(loginModel.user!.otp);
      print(loginModel.user!.name);
      print(loginModel.token);
      print(loginModel.status);
      emit(JobLoginSuccess());
    }).catchError((error){
      print(error.toString());
      emit(JobLoginError(error.toString()));
    }
    );
  }

}
