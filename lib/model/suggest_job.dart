import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/assets.dart';

class SuggestJobModel{
  final String image;
  final String text;

  SuggestJobModel({required this.image, required this.text});

  static List <SuggestJobModel> suggest=[
    SuggestJobModel(image: AppAssets.zoomLogo, text: AppString.zoom),
    SuggestJobModel(image: AppAssets.slack, text: AppString.slack),

  ];
}