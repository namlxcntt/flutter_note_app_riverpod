import 'package:flutter/material.dart';
import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetError extends StatelessWidget {
  const BottomSheetError(
      {super.key,
      required this.title,
      required this.textButton,
      required this.onTapButton});

  final String title;

  final String textButton;

  final VoidCallback onTapButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppConstant.sizePrimary),
          topRight: Radius.circular(AppConstant.sizePrimary),
        ),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset(Assets.iconsIcErrorIl),
        const SizedBox(height: AppConstant.sizePrimary),
        Text(
          title,
          style: context
              .textBaseBold()
              ?.copyWith(fontSize: AppConstant.sizePrimary),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: ElevatedButton(
            onPressed: onTapButton,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50), // NEW
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              backgroundColor: AppColors.colorPrimaryBase,
            ),
            child: Text(
              textButton,
              style: context.textSmBold()?.copyWith(color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
