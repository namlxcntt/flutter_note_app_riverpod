import 'package:flutter_note_app/data/database/app_database.dart';
import 'package:flutter_note_app/data/mapper/note/note_mapper.dart';

import '../model/note/note_model.dart';

abstract class NoteRepository {
  Future<int> createNote(NoteModel noteModel);

  Stream<List<NoteModel>> getListNoteModel();

  Stream<NoteModel> getDetailNote(int id);

  Future<bool> updateNoteModel(NoteModel noteModel);
}

class NoteRepositoryImpl extends NoteRepository {
  final AppDatabase appDatabase;
  final NoteMapper noteMapper;

  NoteRepositoryImpl(
    this.appDatabase,
    this.noteMapper,
  );

  @override
  Future<int> createNote(NoteModel noteModel) {
    return appDatabase.into(appDatabase.noteEntity).insert(
          NoteEntityCompanion.insert(
            title: noteModel.title,
            description: noteModel.description,
            label: noteModel.label,
            timeEdited: noteModel.timeEdited,
            isDoneTask: noteModel.isDoneTask,
            color: noteModel.color,
            isPinned: noteModel.isPinned,
          ),
        );
  }

  @override
  Stream<List<NoteModel>> getListNoteModel() {
    return appDatabase.notesDao.noteInCategory().map((event) {
      return event.map((e) => noteMapper.mapFromEntity(e)).toList();
    });
  }

  @override
  Stream<NoteModel> getDetailNote(int id) {
    var select = appDatabase.select(appDatabase.noteEntity);
    return (select..where((noteEntity) => noteEntity.id.equals(id)))
        .map((noteEntity) => noteMapper.mapFromEntity(noteEntity))
        .watchSingle();
  }

  @override
  Future<bool> updateNoteModel(NoteModel noteModel) async {
    return await appDatabase
        .update(appDatabase.noteEntity)
        .replace(noteMapper.mapFromDomain(noteModel));
  }


}
