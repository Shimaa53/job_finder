import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:sizer/sizer.dart';
import '../../../model/message_model.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../../widgets/custom_widget/default_formfield.dart';
import '../../widgets/custom_widget/default_text.dart';
import '../../widgets/message_widget/message_sheet.dart';
import '../../widgets/message_widget/message_widget.dart';

class MessageScreen extends StatelessWidget {
   MessageScreen({Key? key}) : super(key: key);
  TextEditingController searchController=TextEditingController();
  var scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
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
      //padding
      // body: Padding(
      //   padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 3.h),
      //   child: Center(
      //     child: Column(
      //       children: [
      //         buildSizedBox(height: 13.h,),
      //         Image.asset(AppAssets.noMessage,height: 19.h,width: 43.25.w,),
      //         buildSizedBox(height: 3.h,),
      //         DefaultText(text:AppString.t1InNotReciveMsg,fontSize: 16.5.sp,
      //           fontWeight: FontWeight.w500,
      //           color: AppColor.darkBlue,
      //         ),
      //         buildSizedBox(height: 1.h,),
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
                    isDense: true,


                  ),
                ),
                buildSizedBox(width: 2.w,),
                CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.transparent,
                  child: CircleAvatar(
                    backgroundColor: AppColor.white,
                    radius: 26,
                    child: IconButton(
                        onPressed: (){
                          scaffoldKey.currentState!.showBottomSheet((context) => messageSheet(context)
                          );
                        },
                        icon: AppIcons.uploadFile),
                  ),
                ),

              ],
            ),
            buildSizedBox(height:3.h,),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index)=>buildMessage(MessageModel.msg[index],context),
                  separatorBuilder:(context,index)=> buildDivider(thickness: 1,),
                  itemCount: MessageModel.msg.length),
            )
          ],
        ),
      ),

    );
  }
}
