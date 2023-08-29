import 'package:flutter/material.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_note_app/utils/extensions.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../generated/assets.dart';
import '../theme/colors.dart';

class AppBarWithActionText extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithActionText({
    super.key,
    this.actionText = AppConstant.emptyString,
    required this.onClickActionText,
  });

  final String actionText;
  final VoidCallback onClickActionText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.colorPrimaryBackground,
      leadingWidth: AppConstant.widthActionText,
      elevation: 1,
      leading: GestureDetector(
        onTap: () {
          context.pop();
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppConstant.sizePrimary),
              child: SvgPicture.asset(
                Assets.iconsIcArrowBack,
                width: AppConstant.sizePrimary,
                height: AppConstant.sizePrimary,
              ),
            ),
            Text(
              context.getString().back,
              style: context.textSmBold()?.copyWith(
                  color: AppColors.colorPrimaryBase,
                  fontSize: AppConstant.sizePrimary),
            )
          ],
        ),
      ),
      actions: [
        Container(
          width: AppConstant.widthActionText,
          margin: const EdgeInsets.symmetric(
            vertical: AppConstant.size8,
            horizontal: AppConstant.size8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConstant.size28),
            color: AppColors.colorPrimaryBase,
          ),
          child: Center(
            child: GestureDetector(
              onTap: onClickActionText,
              child: Text(
                actionText,
                style: context.textBaseMedium()?.copyWith(
                    color: Colors.white, fontSize: AppConstant.sizePrimary),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
