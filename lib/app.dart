import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:exam_app/feature/global/bloc/theme/theme_bloc.dart';
import 'package:exam_app/value/theme.dart';
import 'feature/global/test/bloc/test_bloc.dart';
import 'service/navigation/go_router.dart';
import 'value/components.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    appSystemSettings();
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => ThemeBloc()..add(const ThemeEvent.started())),
            BlocProvider(create: (context) => TestBloc()),
          ],
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MaterialApp.router(
                routerConfig: router,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                theme: lightTheme,
                darkTheme: darkTheme,
                themeMode: state.themeMode,
                title: 'exam_app',
              );
            },
          ),
        );
      },
    );
  }
}
