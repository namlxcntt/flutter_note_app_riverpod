import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_note_app/generated/l10n.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomExtraData {
  final String title;
  final String icon;
  final String status;
  final bool arrowRight;

  BottomExtraData({required this.title, required this.icon, this.status = AppConstant.emptyString, this.arrowRight = false});
}
