import 'package:flutter/material.dart';
import 'package:jop_finder/model/message_model.dart';
import 'package:jop_finder/view/utilities/routes.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/color.dart';
import '../custom_widget/default_text.dart';
Widget buildMessage(MessageModel msg,BuildContext context)=>InkWell(
  onTap: (){
    Navigator.pushNamed(context, AppRoutes.chatPageRoute);
  },
  child:   Row(

    children: [

      CircleAvatar(
          backgroundImage: AssetImage(msg.image,),
        radius: 27,
      ),

      SizedBox(width: 2.w,),

      Column(

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              DefaultText(text:msg.type,fontSize: 13.sp,

                fontWeight: FontWeight.w500,

                color: AppColor.darkBlue,

              ),

              DefaultText(text:msg.time

                ,color: AppColor.blue,),









            ],

          ),

          SizedBox(height:1.5.h,),

          DefaultText(text:msg.contain

            ,color: AppColor.grey1,),



        ],

      ),

    ],

  ),
);
