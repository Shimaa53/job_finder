
import '../view/utilities/app_string.dart';
import '../view/utilities/assets.dart';

class MessageModel{
  final String image;
  final String type;
  final String contain;
  final String time;


  MessageModel({required this.image,required this.type,  required this.contain, required this.time});

  static List <MessageModel> msg=[
    MessageModel(image: AppAssets.twitter,type: AppString.twitter, contain: AppString.msgTwitter,time:AppString.time12),
    MessageModel(image: AppAssets.gojek,type: AppString.gojek, contain: AppString.msgGojek,time: AppString.time12),
    MessageModel(image: AppAssets.shoope,type: AppString.shoope, contain: AppString.msgShoope,time: AppString.time9),
    MessageModel(image: AppAssets.dana,type: AppString.dana, contain: AppString.msgDana,time: AppString.yesterday),
    MessageModel(image: AppAssets.slackLogo,type: AppString.slack, contain: AppString.msgSlack,time:AppString.date ),
    MessageModel(image: AppAssets.facebookLogo,type: AppString.facebook, contain: AppString.msgFacebook,time:AppString.date ),

  ];
}