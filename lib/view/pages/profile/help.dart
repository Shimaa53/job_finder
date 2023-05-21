import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  bool isExpanded=false;
  TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: AppIcons.back,
          color: AppColor.darkGrey,
          onPressed: () {
            Navigator.pop(context);
          },),
        title: DefaultText(
          text:AppString.helpCenter,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultFormField(
              controller: searchController,
              prefixIcon:AppIcons.search,
              hintText: AppString.whatCanWeHelp,
              radius: 90,
              isDense: true,


            ),
            buildSizedBox(
              height: 3.h
            ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index)=>
             Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.8.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColor.white)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DefaultText(
                      text: AppString.loremSit,
                      color: AppColor.darkBlue,
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                    ),                IconButton(
                      icon: Icon(
                        isExpanded?Icons.keyboard_arrow_up_outlined:Icons.keyboard_arrow_down_outlined,
                        size: 30,
                        color: AppColor.lightGrey,
                      ),
                      onPressed: (){
                      setState(() {
                        isExpanded=!isExpanded;
                      });
                      },
                    ),
                  ],
                )),
            separatorBuilder: (BuildContext context, int index) =>buildSizedBox(
                height: 2.h
            ),
            itemCount: 6,
          ),
        ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: isExpanded?null:0.0,
              child: DefaultText(text:AppString.loremSitDetails,
                height: 1.4,
                color: AppColor.grey1,),
            )
          ],
        ),
      ),

    );
  }
}
