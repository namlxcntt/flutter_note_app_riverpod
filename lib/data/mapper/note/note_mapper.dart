import 'package:flutter_note_app/data/database/app_database.dart';
import 'package:flutter_note_app/data/mapper/base_mapper.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';

class NoteMapper extends Mapper<NoteEntityData, NoteModel> {
  @override
  NoteEntityData mapFromDomain(NoteModel domain) {
    // TODO: implement mapFromDomain
    throw UnimplementedError();
  }

  @override
  NoteModel mapFromEntity(NoteEntityData entity) {
    return NoteModel(
        id: entity.id,
        title: entity.title,
        description: entity.description,
        timeEdited: entity.timeEdited,
        isDoneTask: entity.isDoneTask,
        label: entity.label,
        color: entity.color,
        isPinned: entity.isPinned);
  }
}
