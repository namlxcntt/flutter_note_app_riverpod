import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_bar_option_model.freezed.dart';

@freezed
abstract class BottomBarOptionModel with _$BottomBarOptionModel {
  factory BottomBarOptionModel({
    required String actionText,
  }) = _BottomBarOptions;

  factory BottomBarOptionModel.createNote({
    required VoidCallback onTapIconMore,
    required Function(bool) onTapPinned,
    required bool statePinned,
  }) = BottomBarOptionCreateNote;

  factory BottomBarOptionModel.detailNote({
    required VoidCallback onTapIconMore,
    required Function(bool) onTapPinned,
    required VoidCallback onTapSearch,
    required String leftText,
    required bool statePinned,
  }) = BottomBarOptionDetailNote;
}
