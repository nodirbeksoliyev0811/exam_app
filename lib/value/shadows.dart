import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';

List<BoxShadow> mainBoxShadow([Color? color]) {
  return [
    BoxShadow(
      color: (color ?? AppColors.primary).withOpacity(0.2),
      spreadRadius: 0.sp,
      blurRadius: 20.sp,
      offset: const Offset(0, 0),
    ),
  ];
}