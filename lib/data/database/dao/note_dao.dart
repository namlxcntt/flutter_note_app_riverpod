import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_note_app/data/database/app_database.dart';
import 'package:flutter_note_app/data/database/entity/label_entity.dart';
import 'package:flutter_note_app/data/database/entity/note_entity.dart';

part 'note_dao.g.dart';

@DriftAccessor(tables: [NoteEntity])
class NotesDao extends DatabaseAccessor<AppDatabase> with _$NotesDaoMixin {

  NotesDao(AppDatabase db) : super(db);

  Stream<List<NoteEntityData>> noteInCategory() {
    return select(noteEntity).watch();
  }
}