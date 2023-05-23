class HomeModel{
  bool? status;
  List<HomeDataModel>? data;

  HomeModel.fromJson(Map<String,dynamic>json){
    status=json['status'];
    if(json['data']!=null){
      data=List.generate(json['data'].length, (index) => HomeDataModel.fromJson(json['data'][index]));
    }
    // data=json['data'].forEach((element){
    //   data?.add(element);
    // });

  }

}
class HomeDataModel{
 int? id;
 String?name;
 String?image;
 String? jobTimeType;
 String? jobType;
 String? jobLevel;
 String? jobDescription;
 String? jobSkill;
 String? compName;
 String? compEmail;
 String? compWebsite;
 String? aboutComp;
 String? location;
 String? salary;

  HomeDataModel.fromJson(Map<String,dynamic>json){
    id= json["id"];
    name= json["name"];
    image= json["image"];
    jobTimeType= json["job_time_type"];
    jobType= json["job_type"];
    jobLevel= json["job_level"];
    jobDescription= json["job_description"];
    jobSkill= json["job_skill"];
    compName= json["comp_name"];
    compEmail= json["comp_email"];
    compWebsite= json["comp_website"];
    aboutComp= json["about_comp"];
    location= json["location"];
    salary= json["salary"];
  }

}