import 'package:flutter/material.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';

class TextUnderLineWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color colorUnderLine;

  const TextUnderLineWidget(
      {super.key,
      required this.text, this.onTap,
      this.colorUnderLine = AppColors.colorPrimaryBase});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: AppColors.colorPrimaryBase),
            ),
          ),
          child: Text(
            text,
            style: context.textBaseMedium()?.copyWith(
                  color: colorUnderLine,
                ),
          )),
    );
  }
}
