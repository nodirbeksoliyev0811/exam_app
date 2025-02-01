import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:exam_app/value/extensions.dart';

import 'colors.dart';
import 'constants.dart';

/// Light Mode
final ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.primaryLight,
  indicatorColor: AppColors.primary,
  splashColor: AppColors.primaryDark.withOpacity(0.1),
  primarySwatch: MaterialColor(AppColors.primary.value, colorCodes),
  highlightColor: AppColors.white.withOpacity(0.0),
  textTheme: TextTheme(
    bodySmall: 14.regular(AppColors.primaryDark),
    bodyMedium: 16.regular(AppColors.primaryDark),
    bodyLarge: 18.regular(AppColors.primaryDark),
    titleSmall: 14.semiBold(AppColors.primaryDark),
    titleMedium: 16.semiBold(AppColors.primaryDark),
    titleLarge: 18.semiBold(AppColors.primaryDark),
    displaySmall: 14.bold(AppColors.primaryDark),
    displayLarge: 16.bold(AppColors.primaryDark),
    displayMedium: 18.bold(AppColors.primaryDark),
    headlineSmall: 14.extraBold(AppColors.primaryDark),
    headlineMedium: 16.extraBold(AppColors.primaryDark),
    headlineLarge: 18.extraBold(AppColors.primaryDark),
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: 16.semiBold(AppColors.black),
    toolbarTextStyle: 16.semiBold(AppColors.black),
    backgroundColor: AppColors.primaryLight,
    iconTheme: IconThemeData(color: AppColors.black),
    actionsIconTheme: IconThemeData(color: AppColors.black),
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.primaryLight,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: AppColors.primaryLight,
      statusBarBrightness: Brightness.light,
      systemNavigationBarContrastEnforced: false,
      systemNavigationBarDividerColor: AppColors.primaryLight,
      systemStatusBarContrastEnforced: false,
    ),
  ),
  buttonTheme: ButtonThemeData(buttonColor: AppColors.primary, textTheme: ButtonTextTheme.primary),
);

/// Dark Mode
final ThemeData darkTheme = ThemeData(
  useMaterial3: false,
  brightness: Brightness.dark,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.primaryDark,
  indicatorColor: AppColors.primary,
  splashColor: AppColors.primaryLight.withOpacity(0.1),
  primarySwatch: MaterialColor(AppColors.primary.value, colorCodes),
  highlightColor: AppColors.white.withOpacity(0.0),
  textTheme: TextTheme(
    bodySmall: 14.regular(AppColors.primaryLight),
    bodyMedium: 16.regular(AppColors.primaryLight),
    bodyLarge: 18.regular(AppColors.primaryLight),
    titleSmall: 14.semiBold(AppColors.primaryLight),
    titleMedium: 16.semiBold(AppColors.primaryLight),
    titleLarge: 18.semiBold(AppColors.primaryLight),
    displaySmall: 14.bold(AppColors.primaryLight),
    displayLarge: 16.bold(AppColors.primaryLight),
    displayMedium: 18.bold(AppColors.primaryLight),
    headlineSmall: 14.extraBold(AppColors.primaryLight),
    headlineMedium: 16.extraBold(AppColors.primaryLight),
    headlineLarge: 18.extraBold(AppColors.primaryLight),
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: 16.semiBold(AppColors.white),
    toolbarTextStyle: 16.semiBold(AppColors.white),
    backgroundColor: AppColors.primaryDark,
    iconTheme: IconThemeData(color: AppColors.white),
    actionsIconTheme: IconThemeData(color: AppColors.white),
    elevation: 0,
    scrolledUnderElevation: 0,
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColors.primaryDark,
      statusBarIconBrightness: Brightness.light,
      statusBarColor: AppColors.primaryDark,
      statusBarBrightness: Brightness.dark,
    ),
  ),
  buttonTheme: ButtonThemeData(buttonColor: AppColors.primary, textTheme: ButtonTextTheme.primary),
);
