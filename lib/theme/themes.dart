import 'package:flutter/material.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static ThemeData getLightTheme() => themeLight;

  static ThemeData getDarkTheme() => themeLight;
}

ThemeData get themeLight {
  return ThemeData(
      primaryColor: AppColors.colorPrimaryLight,
      colorScheme:
          ColorScheme.fromSwatch(accentColor: AppColors.colorPrimaryLight),
      textTheme: GoogleFonts.interTightTextTheme());
}

extension GetThemeTextCustom on BuildContext {
  TextStyle? textXSRegular() {
    return Theme.of(this)
        .textTheme
        .labelSmall
        ?.copyWith(fontWeight: FontWeight.w400, fontSize: 10.5);
  }

  TextStyle? textXSMedium() {
    return Theme.of(this)
        .textTheme
        .labelSmall
        ?.copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle? textXSBold() {
    return Theme.of(this)
        .textTheme
        .labelSmall
        ?.copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle? text2XSRegular() {
    return Theme.of(this)
        .textTheme
        .bodySmall
        ?.copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle? text2XSMedium() {
    return Theme.of(this)
        .textTheme
        .bodySmall
        ?.copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle? textTitle() {
    return Theme.of(this)
        .textTheme
        .titleLarge
        ?.copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle? textBaseRegular() {
    return Theme.of(this)
        .textTheme
        .bodyLarge
        ?.copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle? textBaseMedium() {
    return Theme.of(this)
        .textTheme
        .labelMedium
        ?.copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle? textBaseBold() {
    return Theme.of(this)
        .textTheme
        .bodyLarge
        ?.copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle? textSmRegular() {
    return Theme.of(this)
        .textTheme
        .labelLarge
        ?.copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle? textSmMedium() {
    return Theme.of(this)
        .textTheme
        .labelLarge
        ?.copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle? textSmBold() {
    return Theme.of(this)
        .textTheme
        .labelLarge
        ?.copyWith(fontWeight: FontWeight.w700);
  }
}

ThemeData get themeDark {
  return ThemeData(
    primaryColor: AppColors.colorPrimaryDark,
    colorScheme:
        ColorScheme.fromSwatch(accentColor: AppColors.colorPrimaryDark),
  );
}
