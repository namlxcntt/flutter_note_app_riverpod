import 'package:drift/drift.dart';

class LabelEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text().named('description')();
}