import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/features/home/child/item_notes_home_w.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListNotesHomeWidget extends ConsumerStatefulWidget {
  const ListNotesHomeWidget(this._listModel, {super.key});

  final List<NoteModel> _listModel;

  @override
  ConsumerState createState() => _ListNotesHomeWidgetState();
}

class _ListNotesHomeWidgetState extends ConsumerState<ListNotesHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ItemNoteHomeWidget(
          noteModel: widget._listModel[index],
        ),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: AppConstant.sizePrimary,
          );
        },
        itemCount: widget._listModel.length,
      ),
    );
  }
}
