import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_images.dart';
import '../utils/dimens.dart';

SizedBox spaceHorizontal(double width) {
  return SizedBox(width: width);
}

SizedBox spaceVertical(double height) {
  return SizedBox(height: height);
}

CachedNetworkImage getCachedImage(String? url,
        {double? height,
        double? width,
        double? progressHeight,
        double? progressWeight,
        double? padding,
        BoxFit? fit}) =>
    CachedNetworkImage(
      fit: fit ?? BoxFit.cover,
      imageUrl: url ?? "",
      placeholder: (context, url) => SizedBox(
        height: height,
        width: width,
        child: Center(
            child: Container(
          child: getProgressBar(),
          height: progressHeight ?? 20,
          width: progressWeight ?? 20,
        )),
      ),
      height: height,
      width: width,
      errorWidget: (context, url, error) => Container(
        padding: EdgeInsets.all(padding ?? spacingLarge),
        child: Image.asset(
          AppImages.appUserPlaceHolder,
          fit: BoxFit.cover,
        ),
      ),
    );

CircularProgressIndicator getProgressBar({Color? color, double? width}) =>
    CircularProgressIndicator(
      valueColor:
          AlwaysStoppedAnimation<Color>(color ?? AppColors.primaryColor),
      strokeWidth: width ?? 3,
    );
