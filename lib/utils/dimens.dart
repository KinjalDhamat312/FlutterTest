import 'package:flutter/material.dart';

// Spacing Constant
const spacingXTiny = 2.0;
const spacingTiny = 5.0;
const spacingXSmall = 8.0;
const spacingSmall = 11.0;
const spacingNormal = 12.0;
const spacingMedium = 15.0;
const spacingLarge = 20.0;
const spacingXLarge = 25.0;
const spacingXXLarge = 30.0;
const spacingXXXLarge = 40.0;

// Font Size Constant
const fontTiny1 = 5.0;
const fontTiny2 = 7.0;
const fontSmall1 = 8.0;
const fontSmall2 = 10.0;
const fontSmall3 = 11.0;
const fontSmall4 = 12.0;
const fontMedium1 = 14.0;
const fontMedium2 = 16.0;
const fontMedium3 = 18.0;
const fontLarge1 = 20.0;
const fontLarge2 = 22.0;
const fontLarge3 = 25.0;
const fontXLarge1 = 30.0;
const fontXLarge2 = 40.0;

double widthRatio(double ratio, BuildContext context) =>
    MediaQuery.of(context).size.width * ratio;

double heightRatio(double ratio, BuildContext context) =>
    MediaQuery.of(context).size.height * ratio;
