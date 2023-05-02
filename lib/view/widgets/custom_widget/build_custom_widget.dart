import 'package:flutter/material.dart';


 buildSizedBox({double? height,double? width,Widget? child}) {
   return SizedBox(
    height:height ,
     width: width,
     child:child ,
  );
}

buildDivider({double? height,double? thickness,Color? color})=>
    Divider(
      height: height,
      thickness: thickness,
      color: color,
    );


 buildSpacer()=>Spacer();