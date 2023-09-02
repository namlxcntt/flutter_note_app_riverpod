import 'package:flutter/material.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_note_app/utils/extensions.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../data/model/app_bar/type_app_bar.dart';
import '../generated/assets.dart';
import '../theme/colors.dart';

class AppBarWithActionText extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithActionText({
    super.key,
    required this.typeAppBar,
  });

  final TypeAppBar typeAppBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.colorPrimaryBackground,
      leadingWidth: AppConstant.widthActionText,
      elevation: 0.3,
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
        if (typeAppBar is ActionText)
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
                onTap: (typeAppBar as ActionText).actionClick,
                child: Text(
                  (typeAppBar as ActionText).actionText ?? '',
                  style: context.textBaseMedium()?.copyWith(
                      color: Colors.white, fontSize: AppConstant.sizePrimary),
                ),
              ),
            ),
          ),
        if (typeAppBar is ActionIcons)
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: SvgPicture.asset((typeAppBar as ActionIcons).iconSource),
          )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
