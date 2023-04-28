import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/assets.dart';

class BoardingModel {
  final String image;
  final String information1;
  final String information2;
  final String information3;
  final String details;

  BoardingModel({
    required this.image,
    required this.information1,
    required this.information2,
    required this.information3,
    required this.details,
  });
}
final List<BoardingModel> boardingList = [
  BoardingModel(
    image: AppAssets.boarding,
    information1: AppString.boarding1Information1,
    information2: AppString.boarding1Information2,
    information3: AppString.boarding1Information3,
    details: AppString.details1,
  ),
  BoardingModel(
      image: AppAssets.boarding1,
      information1: AppString.boarding2Information1,
      information2: AppString.boarding2Information2,
      information3: AppString.boarding2Information3,
      details: AppString.details2
  ),
  BoardingModel(
      image:  AppAssets.boarding2,
      information1: AppString.boarding3Information1,
      information2: AppString.boarding3Information2,
      information3: AppString.boarding3Information3,
      details: AppString.details3
  ),
];