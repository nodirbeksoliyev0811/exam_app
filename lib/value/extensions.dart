import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:exam_app/feature/global/bloc/theme/theme_bloc.dart';
import 'package:exam_app/value/images.dart';
import 'colors.dart';
import 'constants.dart';

extension StringExtension on String {
  String capitalize() => "${this[0].toUpperCase()}${substring(1).toLowerCase()}";

  String prettyPrice({String? currency}) {
    return "${NumberFormat("#,### ${currency ?? ''}").format(num.tryParse(this) ?? 0).replaceAll(RegExp(r',' r''), ',')} ";
  }

  Widget networkImage({BoxFit? fit, double? height, double? width, Color? backgroundColor}) {
    return CachedNetworkImage(
      imageUrl: this,
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(5.r),
            image: DecorationImage(image: imageProvider, fit: fit),
          ),
        );
      },
      placeholder: (context, url) {
        return Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(5.r),
            image: DecorationImage(image: AssetImage(AppImages.emptyAvatar), fit: fit),
          ),
        );
      },
      errorWidget: (context, url, error) {
        return Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(5.r),
            image: DecorationImage(image: AssetImage(AppImages.emptyAvatar), fit: fit),
          ),
        );
      },
    );
  }

  Image assetImage({BoxFit? fit, double? height, double? width}) {
    return Image(height: height, width: width, fit: fit ?? BoxFit.contain, image: AssetImage(this));
  }

  Widget assetSvg({Color? color, BoxFit? fit, double? height, double? width}) {
    return SvgPicture.asset(
      this,
      colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      width: width,
      height: height,
    );
  }

  Widget networkSvg([Color? color, double? height, double? width, BoxFit? fit]) {
    return SvgPicture.network(
      this,
      colorFilter: color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      fit: fit ?? BoxFit.contain,
      width: width,
      height: height,
    );
  }

  Widget assetLottie({BoxFit? fit, double? height, double? width}) => Lottie.asset(this, fit: fit, height: height, width: width);
}

extension WidgetExtension on Widget {
  Widget paddingAll([double all = 0.0]) => Padding(padding: EdgeInsets.all(all), child: this);

  Widget paddingSymmetric({double? horizontal, double? vertical}) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: horizontal ?? 0, vertical: vertical ?? 0), child: this);
  }

  Widget paddingOnly({double? left, double? right, double? top, double? bottom}) {
    return Padding(padding: EdgeInsets.only(left: left ?? 0, right: right ?? 0, top: top ?? 0, bottom: bottom ?? 0), child: this);
  }

  Widget radius([double radius = 0]) => ClipRRect(borderRadius: BorderRadius.circular(radius), child: this);

  Widget opacity([double opacity = 1.0]) => Opacity(opacity: opacity, child: this);

  Widget visibility([bool visible = true]) => Visibility(visible: visible, child: this);

  Widget expanded([int flex = 1]) => Expanded(flex: flex, child: this);

  Widget flexible([int flex = 1, FlexFit fit = FlexFit.loose]) => Flexible(flex: flex, fit: fit, child: this);

  Widget sizedBox({double? width, double? height}) => SizedBox(width: width, height: height, child: this);

  Widget center() => Center(child: this);

  Widget align([Alignment alignment = Alignment.center]) => Align(alignment: alignment, child: this);

  Widget backgroundColor([Color color = Colors.transparent]) => Material(color: color, child: this);
}

extension NumExtension on num {
  double _size() => toDouble().spMin;

  SizedBox get ph => SizedBox(height: _size());

  SizedBox get pw => SizedBox(width: _size());

  TextStyle thin([Color? color]) {
    return TextStyle(fontSize: _size(), color: color, fontFamily: appTextFamily, fontWeight: FontWeight.w100);
  }

  TextStyle extraLight([Color? color]) {
    return TextStyle(fontSize: _size(), color: color, fontFamily: appTextFamily, fontWeight: FontWeight.w200);
  }

  TextStyle light([Color? color]) {
    return TextStyle(fontSize: _size(), color: color, fontFamily: appTextFamily, fontWeight: FontWeight.w300);
  }

  TextStyle regular([Color? color]) {
    return TextStyle(fontSize: _size(), color: color, fontFamily: appTextFamily, fontWeight: FontWeight.w400);
  }

  TextStyle medium([Color? color]) {
    return TextStyle(fontSize: _size(), color: color, fontFamily: appTextFamily, fontWeight: FontWeight.w500);
  }

  TextStyle semiBold([Color? color]) {
    return TextStyle(fontSize: _size(), color: color, fontFamily: appTextFamily, fontWeight: FontWeight.w600);
  }

  TextStyle bold([Color? color]) {
    return TextStyle(fontSize: _size(), color: color, fontFamily: appTextFamily, fontWeight: FontWeight.w700);
  }

  TextStyle extraBold([Color? color]) {
    return TextStyle(fontSize: _size(), color: color, fontFamily: appTextFamily, fontWeight: FontWeight.w800);
  }

  TextStyle black([Color? color]) {
    return TextStyle(fontSize: _size(), color: color, fontFamily: appTextFamily, fontWeight: FontWeight.w900);
  }
}

extension BuildContextExtension on BuildContext {
  appLanguage({dynamic uz, dynamic ru, dynamic en}) {
    switch (locale.languageCode) {
      case "uz":
        return uz;
      case "ru":
        return ru;
      case "en":
        return en;
      default:
        return uz;
    }
  }

  appTheme({var light, var dark, bool? isReverse}) {
    final lightColor = (isReverse ?? false) ? AppColors.primaryDark : AppColors.primaryLight;
    final darkColor = (isReverse ?? false) ? AppColors.primaryLight : AppColors.primaryDark;
    switch (read<ThemeBloc>().state.themeMode) {
      case ThemeMode.light:
        return light ?? lightColor;
      case ThemeMode.dark:
        return dark ?? darkColor;
      default:
        return MediaQuery.of(this).platformBrightness == Brightness.light ? light ?? lightColor : dark ?? darkColor;
    }
  }
}

extension GoRouterExtension on GoRouter {
  void clearAndNavigate(String location) {
    while (canPop()) {
      pop();
    }
    pushReplacement(location);
  }
}
