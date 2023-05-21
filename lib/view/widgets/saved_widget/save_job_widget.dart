import 'package:flutter/material.dart';
import 'package:job_finder/view/widgets/custom_widget/build_custom_widget.dart';
import 'package:job_finder/view/widgets/saved_widget/save_sheet.dart';
import 'package:sizer/sizer.dart';
import '../../../model/select_job_model.dart';
import '../../pages/saved/saved_screen.dart';
import '../../utilities/app_string.dart';
import '../../utilities/color.dart';
import '../../utilities/icon.dart';
import '../custom_widget/default_text.dart';

Widget saveJob(SelectJobModel save) => Expanded(
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
                    buildSizedBox(
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
                          buildSizedBox(
                            height: 0.7.h,
                          ),
                          Row(
                            children: [
                              DefaultText(
                                text: save.text,
                                color: AppColor.grey1,
                              ),
                              buildSizedBox(
                                width: 0.7.w,
                              ),
                              CircleAvatar(
                                backgroundColor: AppColor.grey1,
                                minRadius: 2,
                              ),
                              buildSizedBox(
                                width: 0.7.w,
                              ),
                              DefaultText(
                                text: '${save.p1},${save.p2}',
                                color: AppColor.grey1,
                              )
                            ],
                          ),
                        ]),
                    buildSpacer(),
                    IconButton(
                      onPressed: () {
                        SavedScreen.scaffoldKey.currentState!.showBottomSheet((context) =>  saveSheet(context));

                      },
                      icon: AppIcons.more,
                      color: AppColor.darkBlue,
                      iconSize: 30,
                    )
                  ],
                ),
                buildSizedBox(
                  height: 1.5.h,
                ),
                Row(
                  children: [
                    DefaultText(
                      text: AppString.postedTime,
                      color: AppColor.grey1,
                    ),
                    buildSpacer(),
                    Row(
                      children: [
                        AppIcons.time,
                        buildSizedBox(
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
