import 'package:flutter/material.dart';
import 'package:jop_finder/model/select_job_model.dart';
import 'package:jop_finder/view/utilities/color.dart';
import 'package:jop_finder/view/widgets/saved_widget/save_sheet.dart';
import 'package:sizer/sizer.dart';

import '../../pages/saved/saved_screen.dart';
import '../../utilities/app_string.dart';
import '../../utilities/icon.dart';
import '../custom_widget/default_text.dart';
Widget SaveJob(SelectJobModel save) => Expanded(
    child: Container(
        color: AppColor.white0,
        child: Padding(
            padding: EdgeInsets.only(left: 6.w, right: 6.w, top: 3.h),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(save.image, height: 6.2.h, width: 10.w),
                    SizedBox(
                      width: 4.w,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultText(
                            text: save.job,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColor.darkBlue,
                          ),
                          SizedBox(
                            height: 0.7.h,
                          ),
                          Row(
                            children: [
                              DefaultText(
                                text: save.text,
                                color: AppColor.grey1,
                              ),
                              SizedBox(
                                width: 0.7.w,
                              ),
                              CircleAvatar(
                                backgroundColor: AppColor.grey1,
                                minRadius: 2,
                              ),
                              SizedBox(
                                width: 0.7.w,
                              ),
                              DefaultText(
                                text: '${save.p1},${save.p2}',
                                color: AppColor.grey1,
                              )
                            ],
                          ),
                        ]),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        SavedScreen.scaffoldKey.currentState!.showBottomSheet((context) =>  SaveSheet(context));

                      },
                      icon: AppIcons.more,
                      color: AppColor.darkBlue,
                      iconSize: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Row(
                  children: [
                    DefaultText(
                      text: AppString.postedTime,
                      color: AppColor.grey1,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        AppIcons.time,
                        SizedBox(
                          width: 1.w,
                        ),
                        DefaultText(
                          text: AppString.beEarly,
                          color: AppColor.grey1,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ))));
