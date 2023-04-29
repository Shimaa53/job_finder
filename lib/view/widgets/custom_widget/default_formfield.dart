import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final Widget?prefixIcon;
  final Widget?suffixIcon;
  final String?hintText;
  final double radius;
  final double?height;
  final double?width;
  final double horizontalPadding;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final VoidCallback? onTap;
  final bool? isDense;
  final Color?color;
  final double?fontSize;
  final FontWeight fontWeight;




  const DefaultFormField({super.key,
  this.prefixIcon,
  this.hintText,
  this.radius=8,
  this.height,
  this.horizontalPadding=0,
  this.suffixIcon,
  this.controller,
  this.validator,
  this.keyboardType,
  this.onChanged,
  this.isDense,
  this.onTap,
  this.width,
  this.color,
  this.fontSize,
  this.fontWeight=FontWeight.normal
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height:height ,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius)),

      child:
      TextFormField(
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          isDense: isDense,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius),
          ),
        ),
        controller: controller,
        keyboardType: keyboardType,
        validator: validator,
        onChanged: onChanged,
        onTap: onTap,
      )
      ,
    );
  }
}