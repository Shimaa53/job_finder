import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:jop_finder/view/utilities/icon.dart';
import 'package:sizer/sizer.dart';

import '../../../model/chat_model.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../widgets/conversation_sheet.dart';
import '../../widgets/default_formfield.dart';
import '../../widgets/default_text.dart';

class ChatScreen extends StatelessWidget {
   ChatScreen({Key? key}) : super(key: key);
  var scaffoldKey=GlobalKey<ScaffoldState>();

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
                    SizedBox(
                      width: 1.w,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(AppAssets.twitter),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    DefaultText(
                      text: AppString.twitter,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColor.darkBlue,
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          scaffoldKey.currentState!.showBottomSheet((context)=>
                          ConversationSheet(context));
                        },
                        icon: AppIcons.more),

                  ],
                ),
              ),
            ),
           // Padding(
           //   padding: const EdgeInsets.all(10),
           //   child: ListView.builder(itemBuilder: (context, index) {
           //     return Align(
           //         alignment: (ChatModel.chat[index].messagetype=="receiver"?Alignment.topLeft:Alignment.topRight),
           //         child: Padding(
           //           padding: EdgeInsets.only(bottom:10),
           //           child: Container(
           //             padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom:10),
           //             decoration: BoxDecoration(
           //                 borderRadius: BorderRadius.circular(20),
           //                 color: (ChatModel.chat[index].messagetype=="receiver"?Colors.grey:Colors.blue)
           //             ),
           //             child: Text(ChatModel.chat[index].messageContent),
           //
           //           ),
           //         ));
           //   } ,
           //     itemCount:ChatModel.chat.length,
           //   ),
           // ),
           Spacer(),
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
                     child:IconButton(
                       onPressed: (){},
                       icon: AppIcons.send,
                       color: AppColor.darkBlue,

                     ),
                     backgroundColor:AppColor.white0,

                   ),
                 ),
                 SizedBox(width: 15,),
                 Expanded(
                   child: DefaultFormField(
                     hintText: AppString.writeMsg,
                     radius: 90,
                     isdense: true,


                   ),
                 ),
                 SizedBox(width: 15,),
                 CircleAvatar(
                   radius: 24,
                   backgroundColor: AppColor.lightGrey,
                   child: CircleAvatar(
                     radius: 23,
                     child:IconButton(
                       onPressed: (){},
                       icon: AppIcons.micro,
                       color: AppColor.darkBlue,
                     ),
                     backgroundColor:AppColor.white0,

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
