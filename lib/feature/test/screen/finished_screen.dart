import 'package:exam_app/feature/test/bloc/test_bloc.dart';
import 'package:exam_app/service/di/di.dart';
import 'package:exam_app/service/storage/secure_storage.dart';
import 'package:exam_app/value/colors.dart';
import 'package:exam_app/value/components.dart';
import 'package:exam_app/value/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinishedScreen extends StatefulWidget {
  const FinishedScreen({super.key});

  @override
  State<FinishedScreen> createState() => _FinishedScreenState();
}

class _FinishedScreenState extends State<FinishedScreen> {
  late TestBloc _bloc;

  @override
  void initState() {
    _bloc = context.read<TestBloc>();
    super.initState();
  }

  @override
  void dispose() {
    _bloc.add(const TestEvent.started());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TestBloc, TestState>(
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
            padding: EdgeInsets.all(18.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: AppColors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      value: _bloc.score / state.data.length,
                      backgroundColor: const Color(0xffDCE1EB),
                      strokeWidth: 10.sp,
                      color: _bloc.score / state.data.length < 0.5
                          ? AppColors.error
                          : _bloc.score / state.data.length == 0.5
                              ? AppColors.warning
                              : AppColors.success,
                    ).sizedBox(width: 128.sp, height: 128.sp),
                    Text(
                      "${(_bloc.score * 100) ~/ state.data.length}%",
                      style: 24.semiBold(_bloc.score / state.data.length < 0.5
                          ? AppColors.error
                          : _bloc.score / state.data.length == 0.5
                              ? AppColors.warning
                              : AppColors.success),
                    ),
                  ],
                ).paddingSymmetric(vertical: 10.h),
                Text("Yakunlandi", style: 24.medium()),
                if (_bloc.score == 0) Text("Afsuski sizga ball taqdim etilmadi", style: 15.regular()),
                Text("Ja’mi to’plangan ballaringiz soni: ${_bloc.score} ta", style: 13.regular(const Color(0xff8192A5))),
                Text("Umumiy testlar soni: ${state.data.length}", style: 13.regular()).paddingOnly(top: 12.h),
                20.ph,
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 24.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: AppColors.success.withOpacity(0.2),
                      ),
                      child: Column(
                        children: [
                          Text(_bloc.score.toString(), style: 24.medium(AppColors.success)),
                          Text("To’g’ri javob", style: 15.regular(AppColors.success), textAlign: TextAlign.center),
                        ],
                      ),
                    ).expanded(),
                    12.pw,
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 24.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: AppColors.error.withOpacity(0.2),
                      ),
                      child: Column(
                        children: [
                          Text((state.data.length - _bloc.score).toString(), style: 24.medium(AppColors.error)),
                          Text("Noto’g’ri javob", style: 15.regular(AppColors.error), textAlign: TextAlign.center),
                        ],
                      ),
                    ).expanded(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.timer, color: AppColors.warning, size: 20.sp),
                    Text(" ${locator<SecureStorage>().getTime()} / 10:00", style: 15.medium(AppColors.warning)).paddingOnly(top: 10.h),
                  ],
                ),
                GestureDetector(
                  onTap: () => clearAndNavigate(context, "/"),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 12.h),
                    padding: EdgeInsets.all(18.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.primary,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.refresh, color: AppColors.white, size: 20.sp).paddingOnly(right: 12.w),
                        Text("Qayta urinish", style: 15.regular(AppColors.white)),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(18.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: const Color(0xff8192A5).withOpacity(0.2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Chiqish", style: 15.regular(const Color(0xff8192A5))),
                    ],
                  ),
                ),
              ],
            ),
          ).center();
        },
      ),
    );
  }
}
