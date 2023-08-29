import 'package:flutter/material.dart';
import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemExtraOptions extends StatelessWidget {
  const ItemExtraOptions({
    super.key,
    required this.tittle,
    this.content = AppConstant.emptyString,
  });

  final String tittle;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.iconsIcLabael,
          width: AppConstant.size20,
          height: AppConstant.size20,
        ),
        const SizedBox(
          width: AppConstant.sizePrimary,
        ),
        Text(
          tittle,
          style: context
              .textBaseMedium()
              ?.copyWith(color: Colors.black, fontSize: AppConstant.sizePrimary),
        ),
        const Spacer(),
        Text(
          content,
          style: context.textBaseMedium()?.copyWith(color: Colors.grey),
        ),
        const Icon(
          Icons.keyboard_arrow_right_outlined,
          color: AppColors.colorNeutralBaseGrey,
        )
      ],
    );
  }
}
