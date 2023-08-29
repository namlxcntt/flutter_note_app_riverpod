import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';

class ItemNoteHomeWidget extends StatelessWidget {
  const ItemNoteHomeWidget({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Utils.getWidthNoteHome(context),
      decoration: BoxDecoration(
        color: Color(noteModel.color.toInt()),
        borderRadius: BorderRadius.circular(AppConstant.size12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.all(AppConstant.sizePrimary),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    noteModel.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: context
                        .textBaseMedium()
                        ?.copyWith(fontSize: AppConstant.size20),
                  ),
                  const SizedBox(height: AppConstant.sizePrimary),
                  Expanded(
                    child: Text(
                      noteModel.description,
                      maxLines: 12,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.end,
                      overflow: TextOverflow.ellipsis,
                      style: context.textXSRegular()?.copyWith(
                            color: AppColors.colorNeutralDarkGrey,
                            letterSpacing: 1.4,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          noteModel.label.isNotEmpty
              ? Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    height: 36,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: const BoxDecoration(
                        color: AppColors.colorNeutralLightGrey,
                        borderRadius: BorderRadius.only(
                            bottomLeft:
                                Radius.circular(AppConstant.sizePrimary),
                            bottomRight:
                                Radius.circular(AppConstant.sizePrimary))),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Interesting Ideal',
                        style: context
                            .textXSRegular()
                            ?.copyWith(color: AppColors.colorNeutralDarkGrey),
                      ),
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
