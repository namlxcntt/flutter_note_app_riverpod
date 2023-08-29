import 'package:flutter/material.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_svg/svg.dart';

import '../generated/assets.dart';
import '../theme/colors.dart';

class BottomBarOptions extends StatelessWidget {
  final String titleRight;
  final VoidCallback? onTapIconMore;
  final Function(bool) onTapPinned;
  final bool statePinned;


  const BottomBarOptions({
    super.key,
    this.titleRight = AppConstant.emptyString,
    this.onTapIconMore,
    required this.statePinned,
    required this.onTapPinned,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      color: AppColors.colorPrimaryBackground,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: AppConstant.sizePrimary),
              child: Text(
                titleRight,
                style: context.text2XSMedium()?.copyWith(color: Colors.black),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: AppConstant.size24,
                ),
                GestureDetector(
                  onTap: () {
                    onTapPinned(!statePinned);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(AppConstant.size8),
                    child: Image.asset(
                        statePinned
                            ? Assets.imagesImgPinnedSolid
                            : Assets.imagesImgPinned,
                        width: AppConstant.size24),
                  ),
                ),

                GestureDetector(
                  onTap: onTapIconMore,
                  child: Container(
                    height: kToolbarHeight,
                    width: kToolbarHeight,
                    padding: const EdgeInsets.all(AppConstant.sizePrimary),
                    decoration: const BoxDecoration(
                        color: AppColors.colorPrimaryBase,
                        shape: BoxShape.rectangle),
                    child: SvgPicture.asset(Assets.iconsIcCreateThreeDot),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
