import 'package:flutter/material.dart';
import 'package:job_finder/view/utilities/assets.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../model/chat_model.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/message_widget/conversation_sheet.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';

class ChatScreen extends StatelessWidget {
  var scaffoldKey=GlobalKey<ScaffoldState>();

  ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Padding(
       padding:  EdgeInsets.symmetric(horizontal: 6.w,),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
              height: 17.h,
              width: double.infinity,
              color: AppColor.white0,
              child: SafeArea(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: AppIcons.back),
                    buildSizedBox(
                      width: 1.w,
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage(AppAssets.twitter),
                      radius: 18,
                    ),
                    buildSizedBox(
                      width: 2.w,
                    ),
                    DefaultText(
                      text: AppString.twitter,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkBlue,
                    ),
                     buildSpacer(),
                    IconButton(
                        onPressed: () {
                          scaffoldKey.currentState!.showBottomSheet((context)=>
                          conversationSheet(context));
                        },
                        icon: AppIcons.more),

                  ],
                ),
              ),
            ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) =>
              Align(
                alignment: (ChatModel.chat[index].messagetype=="receiver"?Alignment.topLeft:Alignment.topRight),
                child: Padding(
                padding: EdgeInsets.only(bottom:2.h),
                child: Container(
                    padding: EdgeInsets.only(left: 3.3.w,right: 3.3.w,top: 1.8.h,bottom:1.8.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (ChatModel.chat[index].messagetype=="receiver"?Colors.grey:Colors.blue),                    ),
                    child: Text(ChatModel.chat[index].messageContent)

                )),
              ),
            itemCount: ChatModel.chat.length,
          ),
        ),

           buildSpacer(),
           Container(
             height: 12.h,
             width: double.infinity,
             color: AppColor.white0,
             child: Row(
               children: [
                 CircleAvatar(
                   radius: 24,
                   backgroundColor: AppColor.lightGrey,
                   child: CircleAvatar(
                     radius: 23,
                     backgroundColor:AppColor.white0,
                     child:IconButton(
                       onPressed: (){},
                       icon: AppIcons.send,
                       color: AppColor.darkBlue,

                     ),

                   ),
                 ),
                  buildSizedBox(width: 15,),
                 Expanded(
                   child: DefaultFormField(
                     hintText: AppString.writeMsg,
                     radius: 90,
                     isDense: true,


                   ),
                 ),
                 buildSizedBox(width: 15,),
                 CircleAvatar(
                   radius: 24,
                   backgroundColor: AppColor.lightGrey,
                   child: CircleAvatar(
                     radius: 23,
                     backgroundColor:AppColor.white0,
                     child:IconButton(
                       onPressed: (){},
                       icon: AppIcons.micro,
                       color: AppColor.darkBlue,
                     ),

                   ),
                 ),
               ],
             ),
           ),

         ],
       ),
     ),


    );
  }
}
