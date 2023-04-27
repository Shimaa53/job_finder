import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/color.dart';

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
final bool? isdense;



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
this.isdense,
this.onTap,
this.width,
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
            isDense: isdense,
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
