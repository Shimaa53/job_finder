import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_text.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String selectedLanguage='English';
  List<String>languages=["English","Arabic","french","spanish"];
  void onLanguageSelected(String language){
    setState(() {
      selectedLanguage=language;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: AppIcons.back,
          color: AppColor.darkGrey,
          onPressed: () {
            Navigator.pop(context);
          },),
        title: DefaultText(
          text:AppString.language,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),
      ),
      body: ListView.builder(
        itemCount: languages.length,
          itemBuilder: (context, index) {
          final language=languages[index];
            return ListTile(
              title: Text(language),
              trailing: selectedLanguage!=language ?Icon(Icons.check):null,
              onTap: (){
                onLanguageSelected(language);
              },
            );
          }),

    );
  }
}
