import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jop_finder/model/message_model.dart';
import 'package:jop_finder/view/utilities/assets.dart';
import 'package:jop_finder/view/widgets/message_widget.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/default_formfield.dart';
import '../../widgets/default_text.dart';
import '../../widgets/message_sheet.dart';

class MessageScreen extends StatelessWidget {
   MessageScreen({Key? key}) : super(key: key);
  TextEditingController searchController=TextEditingController();
  var scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: AppIcons.back,
          color: AppColor.darkGrey,
          onPressed: () {  },),
        title: DefaultText(
          text:AppString.messages,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.darkBlue,
        ),

      ),
      // body: Padding(
      //   padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
      //   child: Center(
      //     child: Column(
      //       children: [
      //         SizedBox(height: 13.h,),
      //         Image.asset(AppAssets.noMessage,height: 19.h,width: 43.25.w,),
      //         SizedBox(height: 3.h,),
      //         DefaultText(text:AppString.t1InNotReciveMsg,fontSize: 16.5.sp,
      //           fontWeight: FontWeight.w500,
      //           color: AppColor.darkBlue,
      //         ),
      //         SizedBox(height: 1.h,),
      //         DefaultText(text:AppString.t2InNotReciveMsg
      //           ,color: AppColor.grey1,height: 1.4,
      //         ),
      //
      //
      //
      //       ],
      //     ),
      //   ),
      // ),

      body: Padding(
        padding:  EdgeInsets.only(left: 6.w,right: 6.w,top: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [

                Expanded(
                  child: DefaultFormField(
                    controller: searchController,
                    prefixIcon:AppIcons.search,
                    hintText: AppString.searchMsg,
                    radius: 90,
                    isdense: true,


                  ),
                ),
                SizedBox(width: 2.w,),
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.transparent,
                  child: CircleAvatar(
                    backgroundColor: AppColor.white,
                    radius: 26,
                    child: IconButton(
                        onPressed: (){
                          scaffoldKey.currentState!.showBottomSheet((context) => MessageSheet(context)
                          );
                        },
                        icon: AppIcons.uploadFile),
                  ),
                ),

              ],
            ),
            SizedBox(height:3.h,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index)=>BuildMessage(MessageModel.msg[index],context),
                  separatorBuilder:(context,index)=> Divider(thickness: 1,),
                  itemCount: MessageModel.msg.length),
            )
          ],
        ),
      ),

    );
  }
}
