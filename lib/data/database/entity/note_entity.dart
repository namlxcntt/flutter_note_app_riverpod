import 'package:drift/drift.dart';

class NoteEntity extends Table{
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().named('title')();

  TextColumn get description => text().named('description')();

  TextColumn get label => text().named('label')();

  DateTimeColumn get timeEdited => dateTime().named('timeEdited')();

  BoolColumn get isDoneTask => boolean().named("isDoneTask")();

  BoolColumn get isPinned => boolean().named("isPinned")();

  DateTimeColumn get reminder => dateTime().named('reminder').nullable()();

  Int64Column get color => int64().named('color')();

  IntColumn get noteTypeId => integer().named('noteId').nullable()();

  IntColumn get labelId => integer().named('labelId').nullable()();
}