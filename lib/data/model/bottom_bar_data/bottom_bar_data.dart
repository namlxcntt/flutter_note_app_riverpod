import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
}

final bottomBarDataProvider = Provider((ref) => [
      BottomData(
        label: 'Home',
        icon: Assets.menuIcMenuHome,
        index: 0,
        activeIcon: Assets.menuIcMenuHomeSolid,
        padding: 4,
      ),
      BottomData(
        label: 'Complete',
        icon: Assets.menuIcMenuComplete,
        index: 1,
        activeIcon: Assets.menuIcMenuCompleteSolid,
        padding: 4,
      ),
      BottomData(
        label: 'Complete',
        icon: Assets.menuIcMenuComplete,
        index: 2,
        activeIcon: Assets.menuIcMenuCompleteSolid,
        padding: 4,
      ),
      BottomData(
        index: 3,
        label: 'Search',
        icon: Assets.menuIcMenuSearch,
        activeIcon: Assets.menuIcMenuSearchSolid,
        padding: 4,
      ),
      BottomData(
        index: 4,
        label: 'Settings',
        icon: Assets.menuIcMenuSetting,
        activeIcon: Assets.menuIcMenuSettingSolid,
        padding: 4,
      ),
    ]);
