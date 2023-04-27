import 'package:jop_finder/view/utilities/app_string.dart';
import 'package:jop_finder/view/utilities/assets.dart';

class EmployeeModel{
  final String image;
  final String name;
  final String job;
  final String year;


  EmployeeModel({required this.image,required this.job,  required this.name, required this.year});

  static List <EmployeeModel> emp=[
    EmployeeModel(image: AppAssets.photo1,job: AppString.sUiDesign, name: AppString.name1,year:AppString.year5),
    EmployeeModel(image: AppAssets.photo2,job: AppString.uiDesigner, name: AppString.name4,year: AppString.year4),
    EmployeeModel(image: AppAssets.photo1,job: AppString.sUiDesign, name: AppString.name2,year: AppString.year3),
    EmployeeModel(image: AppAssets.photo2,job: AppString.uiDesigner, name: AppString.name5,year: AppString.year5),
    EmployeeModel(image: AppAssets.photo1,job: AppString.sUiDesign, name: AppString.name3,year:AppString.year4 ),
    EmployeeModel(image: AppAssets.photo2,job: AppString.uiDesigner, name: AppString.name6,year:AppString.year3 ),

  ];
}