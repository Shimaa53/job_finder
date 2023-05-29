
import 'package:dio/dio.dart';

import 'end_point.dart';

class DataHelper {
  static Dio dio = Dio();

  static init() {
    dio = Dio(
      BaseOptions
        (
          baseUrl: baseUrl,
          receiveDataWhenStatusError: true,
      ),

    );
  }

  static Future<Response> getData({
    required String url,
    String? token,
    Map<String, dynamic>? queryParameters,
     String? userid
  }) async
  {
    try {
      dio.options.headers = {
        "Authorization": " Bearer ${token ?? " "}"
      };
      final Response response;
      response = await dio.get(url,
        queryParameters: queryParameters,

      );
      // if(userid!=null){
      //  response = await dio.get(url+userid,
      //   queryParameters: queryParameters,
      //
      // );}else{
      //    response = await dio.get(url,
      //       queryParameters: queryParameters,);
      // }
      return response;
    } on DioError catch (error) {
      print(error);
      rethrow;
    }
  }


 static Future<Response>postData({
    required String url,
    String? token,
    required Map<String,dynamic> data ,

  })async{
    try{
      dio.options.headers={
        "Authorization": " Bearer ${token ?? " "}"
      };
      Response response= await dio.post(url,
          data: data);
      return response;
    }
    on DioError catch(error) {
      print(error);
      rethrow;
    }
  }

  Future<Response>putData({
    required String url,
    String? token,
    required Map<String,dynamic> data ,

  })async{
    try{
      dio.options.headers={
        "Authorization": " Bearer ${token ?? " "}"
      };
      Response response= await dio.put(url,
          data: data);
      return response;
    }
    on DioError catch(error) {
      print(error);
      rethrow;
    }
  }

  Future<Response>deleteData({
    required String url,
    String? token,
    Map<String,dynamic>? data ,

  })async{
    try{
      dio.options.headers={
        "Authorization": " Bearer ${token ?? " "}"
      };
      Response response= await dio.delete(url,
          data: data);
      return response;
    }
    on DioError catch(error) {
      print(error);
      rethrow;
    }
  }



}

