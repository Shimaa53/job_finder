
import '../view/utilities/app_string.dart';
import '../view/utilities/assets.dart';

class TypeWorkModel{
  final String image;
  final String text;

  TypeWorkModel({required this.image, required this.text});

  static List <TypeWorkModel> type=[
    TypeWorkModel(image: AppAssets.uiDesigner, text: AppString.uiDesigner),
    TypeWorkModel(image: AppAssets.llustrator, text: AppString.llustrator),
    TypeWorkModel(image: AppAssets.developer, text: AppString.developer),
    TypeWorkModel(image: AppAssets.management, text: AppString.management),
    TypeWorkModel(image: AppAssets.informationTechnology, text: AppString.informationTechnology),
    TypeWorkModel(image: AppAssets.research, text: AppString.research),

  ];
}