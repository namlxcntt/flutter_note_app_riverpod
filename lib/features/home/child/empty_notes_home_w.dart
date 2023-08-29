import 'package:flutter/material.dart';
import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_note_app/utils/extensions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyNotesHome extends StatelessWidget {
  const EmptyNotesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(Assets.iconsIlStarting),
          const SizedBox(height: AppConstant.size32),
          Text(context.getString().start_journey, style: context.textTitle()),
          const SizedBox(height: AppConstant.size20),
          Text(context.getString().starting_text,
              textAlign: TextAlign.center,
              style: context
                  .textSmRegular()
                  ?.copyWith(color: AppColors.colorNeutralDarkGrey)),
          const SizedBox(height: AppConstant.size20),
          SvgPicture.asset(Assets.iconsIcArowStartedAdd),
          const SizedBox(
            height: AppConstant.sizePrimary,
          ),
        ],
      ),
    );
  }
}
