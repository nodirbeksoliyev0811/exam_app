import 'dart:async';
import 'package:exam_app/feature/test/bloc/test_bloc.dart';
import 'package:exam_app/service/di/di.dart';
import 'package:exam_app/service/storage/secure_storage.dart';
import 'package:exam_app/value/colors.dart';
import 'package:exam_app/value/components.dart';
import 'package:exam_app/value/extensions.dart';
import 'package:exam_app/value/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  int time = 600;

  void _startTimer() {
    context.read<TestBloc>().timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (time > 0) {
          setState(() => time--);
          locator<SecureStorage>().setTime(formatTime(time));
        } else {
          context.read<TestBloc>().timer.cancel();
          clearAndNavigate(context, "/finished_screen");
        }
      },
    );
  }

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.sp),
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(8.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppIcons.exit.assetSvg(height: 24.sp),
          AppIcons.info.assetSvg(height: 24.sp),
          AppIcons.moon.assetSvg(height: 24.sp),
          Container(
            padding: EdgeInsets.all(4.sp),
            decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(50.r)),
            child: Row(
              children: [
                Icon(Icons.timer, color: AppColors.primary, size: 20.sp),
                Text(formatTime(time), style: 15.regular()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
