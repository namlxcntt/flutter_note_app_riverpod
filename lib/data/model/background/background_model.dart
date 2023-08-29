import 'package:flutter/material.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BackgroundModel {
  Color bgColor;
  BackgroundModel({required this.bgColor});
}

final backgroundDataProvider = Provider<List<BackgroundModel>>((ref) {
  final List<BackgroundModel> listData = [
    BackgroundModel(bgColor: Colors.white),
    BackgroundModel(bgColor: AppColors.colorErrorLight),
    BackgroundModel(bgColor: AppColors.colorPrimaryLight),
    BackgroundModel(bgColor: AppColors.colorSuccessLight),
    BackgroundModel(bgColor: AppColors.colorWarningLight),
    BackgroundModel(bgColor: AppColors.colorSecondaryLight),
    BackgroundModel(bgColor: AppColors.colorNeutralLightGrey),
  ];
  return listData;
});
