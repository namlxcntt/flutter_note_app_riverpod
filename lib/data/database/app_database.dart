import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_note_app/data/database/dao/note_dao.dart';
import 'package:flutter_note_app/data/database/entity/note_entity.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import 'entity/label_entity.dart';

part 'app_database.g.dart';

LazyDatabase _openDbConnect() {
  return LazyDatabase(() async {
    /// Get folder save database
    final dbFolder = await getApplicationDocumentsDirectory();
    if (! await dbFolder.exists()) {
      await dbFolder.create(recursive: true);
    }
    /// Create file in database
    final file = File(path.join(dbFolder.path,'note_app.sqlite'));
    return NativeDatabase(file);
  });

}


@DriftDatabase(tables: [NoteEntity,LabelEntity],daos: [NotesDao])
class AppDatabase extends _$AppDatabase {

  AppDatabase() : super(_openDbConnect());

  @override
  int get schemaVersion => 1;
}
