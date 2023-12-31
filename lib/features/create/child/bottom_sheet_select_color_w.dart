import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/background/background_model.dart';
import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_note_app/utils/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../create_page.dart';

class BottomSheetSelectColor extends ConsumerWidget {
  const BottomSheetSelectColor({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var listBackGroundData = ref.watch(backgroundDataProvider);
    var selectBackgroundData = ref.watch(selectColorState);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppConstant.sizePrimary),
          topRight: Radius.circular(AppConstant.sizePrimary),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppConstant.sizePrimary),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  Assets.iconsIcCloseButton,
                  width: AppConstant.sizeCircleColor,
                  height: AppConstant.sizeCircleColor,
                ),
              ),
            ),
            Text(
              context.getString().change_background,
              style: context
                  .textXSRegular()
                  ?.copyWith(color: AppColors.colorNeutralDarkGrey),
            ),
            const SizedBox(
              height: AppConstant.sizePrimary,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: listBackGroundData.map((element) {
                return Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      ref.read(selectColorState.notifier).state = element;
                    },
                    child: Container(
                      width: AppConstant.sizeCircleColor,
                      height: AppConstant.sizeCircleColor,
                      padding: const EdgeInsets.all(AppConstant.size4),
                      decoration: BoxDecoration(
                          color: element.bgColor,
                          shape: BoxShape.circle,
                          border: element.bgColor == Colors.white
                              ? Border.all(
                                  color: AppColors.colorNeutralDarkGrey,
                                  width: 1.5)
                              : null),
                      child: selectBackgroundData.bgColor.value ==
                              element.bgColor.value
                          ? Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: element.bgColor == Colors.white
                                        ? AppColors.colorNeutralDarkGrey
                                        : Colors.white),
                              ),
                            )
                          : const SizedBox(),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
