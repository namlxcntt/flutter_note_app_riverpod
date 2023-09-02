// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $NoteEntityTable extends NoteEntity
    with TableInfo<$NoteEntityTable, NoteEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NoteEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timeEditedMeta =
      const VerificationMeta('timeEdited');
  @override
  late final GeneratedColumn<DateTime> timeEdited = GeneratedColumn<DateTime>(
      'timeEdited', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isDoneTaskMeta =
      const VerificationMeta('isDoneTask');
  @override
  late final GeneratedColumn<bool> isDoneTask = GeneratedColumn<bool>(
      'isDoneTask', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("isDoneTask" IN (0, 1))'));
  static const VerificationMeta _isPinnedMeta =
      const VerificationMeta('isPinned');
  @override
  late final GeneratedColumn<bool> isPinned = GeneratedColumn<bool>(
      'isPinned', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("isPinned" IN (0, 1))'));
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<BigInt> color = GeneratedColumn<BigInt>(
      'color', aliasedName, false,
      type: DriftSqlType.bigInt, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, description, label, timeEdited, isDoneTask, isPinned, color];
  @override
  String get aliasedName => _alias ?? 'note_entity';
  @override
  String get actualTableName => 'note_entity';
  @override
  VerificationContext validateIntegrity(Insertable<NoteEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('timeEdited')) {
      context.handle(
          _timeEditedMeta,
          timeEdited.isAcceptableOrUnknown(
              data['timeEdited']!, _timeEditedMeta));
    } else if (isInserting) {
      context.missing(_timeEditedMeta);
    }
    if (data.containsKey('isDoneTask')) {
      context.handle(
          _isDoneTaskMeta,
          isDoneTask.isAcceptableOrUnknown(
              data['isDoneTask']!, _isDoneTaskMeta));
    } else if (isInserting) {
      context.missing(_isDoneTaskMeta);
    }
    if (data.containsKey('isPinned')) {
      context.handle(_isPinnedMeta,
          isPinned.isAcceptableOrUnknown(data['isPinned']!, _isPinnedMeta));
    } else if (isInserting) {
      context.missing(_isPinnedMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NoteEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NoteEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label'])!,
      timeEdited: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timeEdited'])!,
      isDoneTask: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isDoneTask'])!,
      isPinned: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}isPinned'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.bigInt, data['${effectivePrefix}color'])!,
    );
  }

  @override
  $NoteEntityTable createAlias(String alias) {
    return $NoteEntityTable(attachedDatabase, alias);
  }
}

class NoteEntityData extends DataClass implements Insertable<NoteEntityData> {
  final int id;
  final String title;
  final String description;
  final String label;
  final DateTime timeEdited;
  final bool isDoneTask;
  final bool isPinned;
  final BigInt color;
  const NoteEntityData(
      {required this.id,
      required this.title,
      required this.description,
      required this.label,
      required this.timeEdited,
      required this.isDoneTask,
      required this.isPinned,
      required this.color});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['label'] = Variable<String>(label);
    map['timeEdited'] = Variable<DateTime>(timeEdited);
    map['isDoneTask'] = Variable<bool>(isDoneTask);
    map['isPinned'] = Variable<bool>(isPinned);
    map['color'] = Variable<BigInt>(color);
    return map;
  }

  NoteEntityCompanion toCompanion(bool nullToAbsent) {
    return NoteEntityCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      label: Value(label),
      timeEdited: Value(timeEdited),
      isDoneTask: Value(isDoneTask),
      isPinned: Value(isPinned),
      color: Value(color),
    );
  }

  factory NoteEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NoteEntityData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      label: serializer.fromJson<String>(json['label']),
      timeEdited: serializer.fromJson<DateTime>(json['timeEdited']),
      isDoneTask: serializer.fromJson<bool>(json['isDoneTask']),
      isPinned: serializer.fromJson<bool>(json['isPinned']),
      color: serializer.fromJson<BigInt>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'label': serializer.toJson<String>(label),
      'timeEdited': serializer.toJson<DateTime>(timeEdited),
      'isDoneTask': serializer.toJson<bool>(isDoneTask),
      'isPinned': serializer.toJson<bool>(isPinned),
      'color': serializer.toJson<BigInt>(color),
    };
  }

  NoteEntityData copyWith(
          {int? id,
          String? title,
          String? description,
          String? label,
          DateTime? timeEdited,
          bool? isDoneTask,
          bool? isPinned,
          BigInt? color}) =>
      NoteEntityData(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        label: label ?? this.label,
        timeEdited: timeEdited ?? this.timeEdited,
        isDoneTask: isDoneTask ?? this.isDoneTask,
        isPinned: isPinned ?? this.isPinned,
        color: color ?? this.color,
      );
  @override
  String toString() {
    return (StringBuffer('NoteEntityData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('label: $label, ')
          ..write('timeEdited: $timeEdited, ')
          ..write('isDoneTask: $isDoneTask, ')
          ..write('isPinned: $isPinned, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, title, description, label, timeEdited, isDoneTask, isPinned, color);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteEntityData &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.label == this.label &&
          other.timeEdited == this.timeEdited &&
          other.isDoneTask == this.isDoneTask &&
          other.isPinned == this.isPinned &&
          other.color == this.color);
}

class NoteEntityCompanion extends UpdateCompanion<NoteEntityData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> label;
  final Value<DateTime> timeEdited;
  final Value<bool> isDoneTask;
  final Value<bool> isPinned;
  final Value<BigInt> color;
  const NoteEntityCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.label = const Value.absent(),
    this.timeEdited = const Value.absent(),
    this.isDoneTask = const Value.absent(),
    this.isPinned = const Value.absent(),
    this.color = const Value.absent(),
  });
  NoteEntityCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required String label,
    required DateTime timeEdited,
    required bool isDoneTask,
    required bool isPinned,
    required BigInt color,
  })  : title = Value(title),
        description = Value(description),
        label = Value(label),
        timeEdited = Value(timeEdited),
        isDoneTask = Value(isDoneTask),
        isPinned = Value(isPinned),
        color = Value(color);
  static Insertable<NoteEntityData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? label,
    Expression<DateTime>? timeEdited,
    Expression<bool>? isDoneTask,
    Expression<bool>? isPinned,
    Expression<BigInt>? color,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (label != null) 'label': label,
      if (timeEdited != null) 'timeEdited': timeEdited,
      if (isDoneTask != null) 'isDoneTask': isDoneTask,
      if (isPinned != null) 'isPinned': isPinned,
      if (color != null) 'color': color,
    });
  }

  NoteEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? description,
      Value<String>? label,
      Value<DateTime>? timeEdited,
      Value<bool>? isDoneTask,
      Value<bool>? isPinned,
      Value<BigInt>? color}) {
    return NoteEntityCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      label: label ?? this.label,
      timeEdited: timeEdited ?? this.timeEdited,
      isDoneTask: isDoneTask ?? this.isDoneTask,
      isPinned: isPinned ?? this.isPinned,
      color: color ?? this.color,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (timeEdited.present) {
      map['timeEdited'] = Variable<DateTime>(timeEdited.value);
    }
    if (isDoneTask.present) {
      map['isDoneTask'] = Variable<bool>(isDoneTask.value);
    }
    if (isPinned.present) {
      map['isPinned'] = Variable<bool>(isPinned.value);
    }
    if (color.present) {
      map['color'] = Variable<BigInt>(color.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoteEntityCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('label: $label, ')
          ..write('timeEdited: $timeEdited, ')
          ..write('isDoneTask: $isDoneTask, ')
          ..write('isPinned: $isPinned, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $NoteEntityTable noteEntity = $NoteEntityTable(this);
  late final NotesDao notesDao = NotesDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [noteEntity];
}
