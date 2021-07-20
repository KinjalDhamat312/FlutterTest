import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'dimens.dart';

const fontWeightExtraLight = FontWeight.w200;
const fontWeightLight = FontWeight.w300;
const fontWeightRegular = FontWeight.w400;
const fontWeightMedium = FontWeight.w500;
const fontWeightW600 = FontWeight.w600;
const fontWeightSemiBold = FontWeight.w700;
const fontWeightBold = FontWeight.w700;
const fontWeightExtraBold = FontWeight.w800;

TextStyle textStyleAsapExtraLight({
  Color? color,
  double? fontSize,
}) =>
    TextStyle(
        color: color ?? AppColors.black1,
        fontSize: fontSize ?? fontMedium1,
        fontWeight: fontWeightExtraLight,
        letterSpacing: 0.4);

TextStyle textStyleAsapLight({
  Color? color,
  double? fontSize,
}) =>
    TextStyle(
        color: color ?? AppColors.black1,
        fontSize: fontSize ?? fontMedium1,
        fontWeight: fontWeightLight,
        letterSpacing: 0.4);

TextStyle textStyleAsapRegular({Color? color, double? fontSize}) => TextStyle(
    color: color ?? AppColors.black1,
    fontSize: fontSize ?? fontMedium1,
    fontWeight: fontWeightRegular,
    letterSpacing: 0.4);

TextStyle textStyleAsapMedium({Color? color, double? fontSize}) => TextStyle(
    color: color ?? AppColors.black1,
    fontSize: fontSize ?? fontMedium1,
    fontWeight: fontWeightMedium,
    letterSpacing: 0.4);

TextStyle textStyleAsapSemiBold(
        {Color? color, double? fontSize, double? letterSpacing}) =>
    TextStyle(
        color: color ?? AppColors.black1,
        fontSize: fontSize ?? fontMedium1,
        fontWeight: fontWeightSemiBold,
        letterSpacing: letterSpacing ?? 0.4);

TextStyle textStyleAsapBold({Color? color, double? fontSize}) => TextStyle(
    color: color ?? AppColors.black1,
    fontSize: fontSize ?? fontMedium1,
    fontWeight: fontWeightBold,
    letterSpacing: 0.4);
