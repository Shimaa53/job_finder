import 'package:flutter/material.dart';


 buildSizedBox({double? height,double? width}) {
   return SizedBox(
    height:height ,
     width: width,
  );
}

buildDivider({double? height,double? thickness})=>
    Divider(
      height: height,
      thickness: thickness,
    );


 buildSpacer()=>Spacer();