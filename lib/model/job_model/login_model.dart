class JobLoginModel{
bool? status;
String? token;
LoginUser? user;

JobLoginModel.fromJson(Map<String,dynamic>json){
  status=json['status'];
  token=json['token'];
  user=json['user']!=null?LoginUser.fromJson(json['user']):null;
}
}
class LoginUser{
  int? id;
  String? name;
  String? email;
  String? otp;


  LoginUser.fromJson(Map<String,dynamic>json){
    id=json['id'];
    name=json['name'];
    email=json['email'];
    otp=json['otp'];
}
}