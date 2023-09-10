import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/features/home/child/item_notes_home_w.dart';
import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme/colors.dart';

class ListNotesHomeWidget extends ConsumerStatefulWidget {
  const ListNotesHomeWidget(
    this._listModel, {
    super.key,
    this.titleEmpty = '',
    required this.callBack,
  });

  final List<NoteModel> _listModel;

  final String titleEmpty;

  final Function(NoteModel) callBack;

  @override
  ConsumerState createState() => _ListNotesHomeWidgetState();
}

class _ListNotesHomeWidgetState extends ConsumerState<ListNotesHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: widget._listModel.isNotEmpty
          ? ListView.separated(
        shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  widget.callBack(widget._listModel[index]);
                },
                child: ItemNoteHomeWidget(
                  noteModel: widget._listModel[index],
                ),
              ),
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: AppConstant.sizePrimary,
                );
              },
              itemCount: widget._listModel.length,
            )
          : Center(
              child: Column(
                children: [
                  Flexible(
                      flex: 2,
                      child: SvgPicture.asset(Assets.iconsIlEmptyListPinned)),
                  Flexible(
                    flex: 1,
                    child: Center(
                      child: Text(widget.titleEmpty,
                          textAlign: TextAlign.center,
                          style: context.textSmRegular()?.copyWith(
                              color: AppColors.colorNeutralDarkGrey)),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
