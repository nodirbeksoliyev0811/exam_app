import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:exam_app/value/colors.dart';
import 'package:exam_app/value/extensions.dart';
import 'package:exam_app/value/images.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key, this.imagePath, this.size});

  final String? imagePath;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imagePath ?? '',
      imageBuilder: (context, imageProvider) {
        return Container(
          height: size ?? 150.sp,
          width: size ?? 150.sp,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        );
      },
      errorWidget: (context, url, error) {
        return Container(
          height: size ?? 150.sp,
          width: size ?? 150.sp,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.appTheme(),
            image: DecorationImage(
              image: AssetImage(AppImages.emptyAvatar),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(context.appTheme(isReverse: true, light: AppColors.primary), BlendMode.srcIn),
            ),
          ),
        );
      },
      placeholder: (context, url) {
        return Skeletonizer(
          effect: ShimmerEffect(
            baseColor: context.appTheme(isReverse: true).withOpacity(.1),
            highlightColor: context.appTheme(isReverse: true).withOpacity(.2),
          ),
          child: Container(
            height: size ?? 150.sp,
            width: size ?? 150.sp,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.appTheme(),
              image: DecorationImage(
                image: AssetImage(AppImages.emptyAvatar),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(context.appTheme(isReverse: true, light: AppColors.primary), BlendMode.srcIn),
              ),
            ),
          ),
        );
      },
    );
  }
}
