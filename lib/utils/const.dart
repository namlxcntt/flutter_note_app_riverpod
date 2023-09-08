import 'package:flutter/cupertino.dart';

class AppConstant {
  static const widthNoteHome = 180.0;
  static const heightNoteHome = 252.0;
  static const widthActionText = 80.0;
  static const sizeCircleColor = 32.0;
  static const minHeightBottomSheet = 150.0;
  static const maxHeightBottomSheet = 160.0;

  static const size4 = 4.0;
  static const size8 = 8.0;
  static const size12 = 12.0;
  static const size14 = 14.0;
  static const sizePrimary = 16.0;
  static const size18 = 18.0;
  static const size20 = 20.0;
  static const size24 = 24.0;
  static const size28 = 28.0;
  static const size32 = 32.0;
  static const size36 = 36.0;
  static const size40 = 40.0;

  static const emptyString = '';
}

class Utils {
  static double getWidthNoteHome(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double widthItem = width / 2 ;
    return widthItem;
  }
  static double getHeightNoteHome(BuildContext context) {
    double width = getWidthNoteHome(context);
    return width * 1.5;
  }
}