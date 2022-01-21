import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  UIHelper._();

  static double getAppTitleWidgetHeight() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.10.sh : 0.10.sw;
  }

  static double getLogoSize() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.1.sh : 0.1.sw;
  }

  static EdgeInsets getDefaultPadding() {
    return ScreenUtil().orientation == Orientation.portrait
        ? EdgeInsets.all(12.h)
        : EdgeInsets.all(5.w);
  }

  static int getPokemonSize() {
    return ScreenUtil().orientation == Orientation.portrait ? 2 : 3;
  }
}
