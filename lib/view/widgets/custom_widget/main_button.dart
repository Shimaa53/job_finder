import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'default_text.dart';

class MainButton extends StatelessWidget {
  final double height;
  final double width;
  final Color?colorBox;
  final Color?color;
  final String text;
  final VoidCallback onTap;

  const MainButton({super.key, this.height=48, this.colorBox, required this.text, required this.onTap, this.color,
  this.width=double.infinity,});
  @override
  Widget build(BuildContext context) {
    return Center(child: SizedBox(
      height:height ,
      width: width,
      child:ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorBox,
            shape:const StadiumBorder(),
          ),
          onPressed: onTap,
          child:DefaultText(text: text,fontSize: 11.sp,color: color,

          )

      )
      ,
    ));
  }
}