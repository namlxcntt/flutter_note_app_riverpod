import 'package:flutter_note_app/generated/assets.dart';

class BottomData {
  String label;
  String icon;
  String activeIcon;
  double padding;
  int index;
  BottomData(
      {required this.label,
      required this.icon,
      required this.activeIcon,
      required this.index,
      required this.padding});

  static List<BottomData> listHome() {
    return [

    ];
  }
}
