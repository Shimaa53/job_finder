import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/assets.dart';

class SelectJobModel{
  final String image;
  final String job;
  final String text;
  final String p1;
  final String p2;
  final String price;
  final String type;



  SelectJobModel({required this.image,required this.job,  required this.text,required this.p1,required this.p2,required this.price,required this.type});

  static List <SelectJobModel> selectJob=[
    SelectJobModel(image: AppAssets.twitter,job: AppString.uiDesigner, text: AppString.twitter,p1:AppString.jakarta ,p2:AppString.indonesia ,price: AppString.p10,type: AppString.fullTime),
    SelectJobModel(image: AppAssets.spectrum,job: AppString.uiDesigner, text: AppString.spectrum,p1:AppString.jakarta ,p2:AppString.indonesia,price: AppString.p10 ,type: AppString.fullTime),
    SelectJobModel(image: AppAssets.vk,job: AppString.sUiDesign, text: AppString.vk,p1:AppString.yogyakarta ,p2:AppString.indonesia,price: AppString.p12 ,type: AppString.fullTime),
    SelectJobModel(image: AppAssets.invision,job: AppString.juniorUiDesign, text: AppString.invision,p1:AppString.jakarta ,p2:AppString.indonesia,price: AppString.p9,type: AppString.partTime ),
    SelectJobModel(image: AppAssets.behance,job: AppString.juniorUiDesign, text: AppString.behance,p1:AppString.surakarta ,p2:AppString.indonesia ,price: AppString.p12,type: AppString.partTime),

  ];
}