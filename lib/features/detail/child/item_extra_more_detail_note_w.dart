import 'package:flutter/material.dart';
import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemExtraMoreDetail extends ConsumerWidget {
  const ItemExtraMoreDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: SvgPicture.asset(Assets.extrasIcReminder),
        ),
        Flexible(
          flex: 6,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Set Reminder',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: context
                  .textBaseMedium()
                  ?.copyWith(color: AppColors.colorNeutralBlack,fontSize: AppConstant.size14),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Text(
            'Not set',
            textAlign: TextAlign.end,
            overflow: TextOverflow.ellipsis,
            style: context
                .text2XSRegular()
                ?.copyWith(color: AppColors.colorNeutralBaseGrey),
          ),
        ),
        Flexible(
          flex: 1,
          child: SvgPicture.asset(Assets.iconsIcArrowRight),
        ),
      ],
    );
  }
}
