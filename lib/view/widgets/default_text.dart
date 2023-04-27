import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final double?fontSize;
  final Color?color;
  final FontWeight fontWeight;
  final double? height;

  const DefaultText({super.key, required this.text, this.fontSize, this.color,
  this.fontWeight=FontWeight.normal,  this.height
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontSize: fontSize,
        color: color,
      fontWeight: fontWeight,
      height: height,
    )
    );

  }
}
