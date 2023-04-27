import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/assets.dart';

class RecentJobModel{
  final String image;
  final String job;
  final String text;

  RecentJobModel({required this.image,required this.job,  required this.text});

  static List <RecentJobModel> recent=[
    RecentJobModel(image: AppAssets.twitter,job: AppString.sUiDesign, text: AppString.twitter),
    RecentJobModel(image: AppAssets.discord,job: AppString.sUxDesign, text: AppString.discord),

  ];
}