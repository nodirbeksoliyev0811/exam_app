import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:exam_app/value/colors.dart';
import 'package:exam_app/value/extensions.dart';
import 'package:exam_app/value/images.dart';
import 'package:go_router/go_router.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [AppImages.notFound.assetImage(height: 210.sp)]),
          Text("Not Found", style: 34.medium(AppColors.primary), textAlign: TextAlign.center).paddingOnly(top: 60.h),
          Text("Unfortunately, such a page does not exist.", style: 17.regular(), textAlign: TextAlign.center).paddingOnly(top: 12.h),
          CupertinoButton(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                color: context.appTheme(isReverse: true),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Text("Go Home", style: 24.semiBold()),
            ),
            onPressed: () => context.pushReplacement('/'),
          ).paddingSymmetric(horizontal: 16.w, vertical: 10.h),
        ],
      ).paddingSymmetric(horizontal: 36.w),
    );
  }
}
