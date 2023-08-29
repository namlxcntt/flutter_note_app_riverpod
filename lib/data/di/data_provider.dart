import 'package:flutter_note_app/data/database/app_database.dart';
import 'package:flutter_note_app/data/mapper/note/note_mapper.dart';
import 'package:flutter_note_app/data/repository/note_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// App database
final appDatabaseProvide = Provider((ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
});

// Mapper
final noteMapperProvider = Provider((ref) => NoteMapper());

// Repository
final createNoteRepoProvider = Provider<NoteRepository>((ref) {
  final appDatabase = ref.read(appDatabaseProvide);
  final noteMapper = ref.read(noteMapperProvider);
  return NoteRepositoryImpl(appDatabase, noteMapper);
});
