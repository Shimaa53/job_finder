import 'package:flutter/material.dart';

//SizedBox
 buildSizedBox({double? height,double? width,Widget? child}) {
   return SizedBox(
    height:height ,
     width: width,
     child:child ,
  );
}

//Divider
buildDivider({double? height,double? thickness,Color? color})=>
    Divider(
      height: height,
      thickness: thickness,
      color: color,
    );

//Spacer
 buildSpacer()=>Spacer();