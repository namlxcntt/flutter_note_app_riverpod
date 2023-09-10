import 'package:flutter/material.dart';
import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_note_app/utils/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BottomSheetPinnedSuccess extends StatelessWidget {
  const BottomSheetPinnedSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConstant.sizePrimary),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppConstant.sizePrimary),
          topRight: Radius.circular(AppConstant.sizePrimary),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                Assets.iconsIcCloseButton,
                width: AppConstant.sizeCircleColor,
                height: AppConstant.sizeCircleColor,
              ),
            ),
          ),
          const Spacer(),
          SvgPicture.asset(Assets.iconsIcPinnedSuccess),
          const SizedBox(
            height: AppConstant.sizePrimary,
          ),
          Text(
            context.getString().note_pinned_success_title,
            style: context.textTitle()?.copyWith(
                  fontSize: AppConstant.size20,
                  color: AppColors.colorNeutralBlack,
                ),
          ),
          const SizedBox(
            height: AppConstant.sizePrimary,
          ),
          Text(
            context.getString().note_pinned_success_desc,
            textAlign: TextAlign.center,
            style: context.textBaseRegular()?.copyWith(
                fontSize: AppConstant.sizePrimary,
                color: AppColors.colorNeutralDarkGrey),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
