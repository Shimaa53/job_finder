import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../model/message_model.dart';
import '../../utilities/color.dart';
import '../../utilities/routes.dart';
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

      buildSizedBox(width: 2.w,),

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

          buildSizedBox(height:1.5.h,),

          DefaultText(text:msg.contain

            ,color: AppColor.grey1,),



        ],

      ),

    ],

  ),
);
