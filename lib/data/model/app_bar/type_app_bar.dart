import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_app_bar.freezed.dart';

@freezed
abstract class TypeAppBar with _$TypeAppBar {
  factory TypeAppBar({
    required String actionText,
  }) = _TypeAppBar;

  factory TypeAppBar.actionText(
      {required String actionText,
      required VoidCallback actionClick}) = ActionText;

  factory TypeAppBar.actionIcon(
      {required String iconSource,
      required VoidCallback actionClick}) = ActionIcons;

  factory TypeAppBar.titleCenter({required String title}) = TitleCenter;
}
