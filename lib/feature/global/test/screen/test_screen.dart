import 'package:exam_app/feature/global/test/bloc/test_bloc.dart';
import 'package:exam_app/feature/global/test/widget/top_bar.dart';
import 'package:exam_app/value/colors.dart';
import 'package:exam_app/value/components.dart';
import 'package:exam_app/value/extensions.dart';
import 'package:exam_app/value/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late TestBloc _bloc;

  @override
  void initState() {
    _bloc = context.read<TestBloc>();
    _bloc.add(const TestEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 30.sp),
      body: BlocBuilder<TestBloc, TestState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              Row(
                children: List.generate(
                  state.data.length,
                  (index) => ZoomTapAnimation(
                    onTap: () => _bloc.add(TestEvent.changePage(index)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppIcons.arrowDown.assetSvg(
                          color: state.currentIndex == index ? AppColors.primary : AppColors.transparent,
                          height: 6.h,
                        ),
                        Container(
                          margin: EdgeInsets.all(5.sp),
                          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: state.selectedAnswers.containsKey(index) ? AppColors.success : AppColors.white,
                          ),
                          child: Text(
                            "${index + 1}",
                            style: 16.regular(
                              state.selectedAnswers.containsKey(index) ? AppColors.white : AppColors.black,
                            ),
                          ).center(),
                        ),
                      ],
                    ),
                  ).expanded(),
                ),
              ).paddingSymmetric(horizontal: 13.w),
              PageView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, i1) {
                  return ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.white,
                          border: Border.all(width: 1.sp, color: AppColors.primary)
                        ),
                        padding: EdgeInsets.all(18.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Savol:", style: 22.semiBold()).paddingOnly(bottom: 10.h),
                            Row(children: [Text(state.data[i1].question, style: 15.regular()).expanded()]),
                          ],
                        ),
                      ),
                      Text("Javoblar", style: 15.regular()).paddingOnly(top: 12.h, bottom: 8.h),
                      ...List.generate(
                        state.data[i1].variants.length,
                        (i2) {
                          bool isSelected = state.selectedAnswers.containsKey(i1);
                          bool isCorrect = state.data[i1].variants[i2].response == state.data[i1].correctVariant;
                          Color getColor(Color success, Color error, Color defaultColor) {
                            return state.selectedAnswers.containsKey(i1)
                                ? state.selectedAnswers[i1] == state.data[i1].variants[i2].response
                                    ? isCorrect
                                        ? success
                                        : error
                                    : isCorrect
                                        ? success
                                        : defaultColor
                                : defaultColor;
                          }

                          return GestureDetector(
                            onTap: () {
                              if (!isSelected) {
                                _bloc.add(TestEvent.setResponse(response: state.data[i1].variants[i2].response, index: i1));
                                _bloc.pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.linear);
                                if (state.currentIndex < state.data.length - 1) {
                                  _bloc.add(TestEvent.changePage(state.currentIndex + 1));
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: getColor(AppColors.success, AppColors.error, AppColors.white),
                              ),
                              margin: EdgeInsets.symmetric(vertical: 5.h),
                              padding: EdgeInsets.all(18.sp),
                              child: Row(
                                children: [
                                  Text(
                                    state.data[i1].variants[i2].variant,
                                    style: 20.semiBold(getColor(AppColors.white, AppColors.white, AppColors.primary)),
                                  ).paddingOnly(right: 10.w),
                                  Text(
                                    state.data[i1].variants[i2].response,
                                    style: 15.regular(getColor(AppColors.white, AppColors.white, AppColors.black)),
                                  ).expanded(),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ).paddingAll(16.sp);
                },
                physics: const NeverScrollableScrollPhysics(),
                controller: _bloc.pageController,
              ).expanded(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  state.currentIndex > 0
                      ? IconButton(
                          onPressed: () {
                            _bloc.pageController.previousPage(duration: const Duration(milliseconds: 200), curve: Curves.linear);
                            _bloc.add(TestEvent.changePage(state.currentIndex - 1));
                          },
                          icon: Icon(Icons.arrow_back, color: Colors.grey,size: 24.sp),
                        )
                      : 50.pw,
                  state.selectedAnswers.length != state.data.length
                      ? Text("${state.currentIndex + 1}/${state.data.length}")
                      : ElevatedButton(
                          onPressed: () => clearAndNavigate(context, "/finished_screen"),
                          child: Text("Yakunlash", style: 16.regular()),
                        ),
                  state.currentIndex < state.data.length - 1
                      ? IconButton(
                          onPressed: () {
                            _bloc.pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.linear);
                            _bloc.add(TestEvent.changePage(state.currentIndex + 1));
                          },
                          icon: Icon(Icons.arrow_forward, color: Colors.grey,size: 24.sp),
                        )
                      : 50.pw,
                ],
              ).paddingSymmetric(vertical: 10.h, horizontal: 16.w),
              50.ph,
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _bloc.timer.cancel();
    super.dispose();
  }
}
