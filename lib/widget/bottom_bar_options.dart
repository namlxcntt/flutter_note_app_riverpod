import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/bottom_bar_options/bottom_bar_option_model.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_svg/svg.dart';

import '../generated/assets.dart';
import '../theme/colors.dart';

class BottomBarOptions extends StatelessWidget {

  final BottomBarOptionModel bottomBarOptionModel;

  const BottomBarOptions({
    super.key,
    required this.bottomBarOptionModel,
  });

  @override
  Widget build(BuildContext context) {
    String titleLeft = AppConstant.emptyString;
    Function(bool)? actionTapPinned;
    VoidCallback? actionTapSearch;
    VoidCallback? actionTapMore;
    bool statePinned = false;
    bool isVisibleSearch = false;

    if (bottomBarOptionModel is BottomBarOptionCreateNote) {
      final createNoteModel = bottomBarOptionModel as BottomBarOptionCreateNote;
      actionTapPinned = createNoteModel.onTapPinned;
      statePinned = createNoteModel.statePinned;
      actionTapMore = createNoteModel.onTapIconMore;
    } else if (bottomBarOptionModel is BottomBarOptionDetailNote) {
      final detailNoteModel = bottomBarOptionModel as BottomBarOptionDetailNote;
      titleLeft = detailNoteModel.leftText;
      actionTapPinned = detailNoteModel.onTapPinned;
      statePinned = detailNoteModel.statePinned;
      actionTapMore = detailNoteModel.onTapIconMore;
      isVisibleSearch = true;
    }

    return Container(
      height: kToolbarHeight,
      decoration: BoxDecoration(
        color: AppColors.colorPrimaryBackground,
        boxShadow: kElevationToShadow[1],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: AppConstant.sizePrimary),
              child: Text(
                titleLeft,
                style: context.text2XSMedium()?.copyWith(color: Colors.black),
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: AppConstant.size24,
                ),
                Visibility(
                  visible: isVisibleSearch,
                  child: GestureDetector(
                    onTap: actionTapSearch,
                    child: Padding(
                      padding: const EdgeInsets.all(AppConstant.size8),
                      child: SvgPicture.asset(Assets.iconsIcSearch,
                          width: AppConstant.size24),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    actionTapPinned?.call(!statePinned);
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
                  onTap: actionTapMore,
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
