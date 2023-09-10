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
  static const VerificationMeta _reminderMeta =
      const VerificationMeta('reminder');
  @override
  late final GeneratedColumn<DateTime> reminder = GeneratedColumn<DateTime>(
      'reminder', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<BigInt> color = GeneratedColumn<BigInt>(
      'color', aliasedName, false,
      type: DriftSqlType.bigInt, requiredDuringInsert: true);
  static const VerificationMeta _noteTypeIdMeta =
      const VerificationMeta('noteTypeId');
  @override
  late final GeneratedColumn<int> noteTypeId = GeneratedColumn<int>(
      'noteTypeId', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _labelIdMeta =
      const VerificationMeta('labelId');
  @override
  late final GeneratedColumn<int> labelId = GeneratedColumn<int>(
      'labelId', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        description,
        label,
        timeEdited,
        isDoneTask,
        isPinned,
        reminder,
        color,
        noteTypeId,
        labelId
      ];
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
    if (data.containsKey('reminder')) {
      context.handle(_reminderMeta,
          reminder.isAcceptableOrUnknown(data['reminder']!, _reminderMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('noteTypeId')) {
      context.handle(
          _noteTypeIdMeta,
          noteTypeId.isAcceptableOrUnknown(
              data['noteTypeId']!, _noteTypeIdMeta));
    }
    if (data.containsKey('labelId')) {
      context.handle(_labelIdMeta,
          labelId.isAcceptableOrUnknown(data['labelId']!, _labelIdMeta));
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
      reminder: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}reminder']),
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.bigInt, data['${effectivePrefix}color'])!,
      noteTypeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}noteTypeId']),
      labelId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}labelId']),
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
  final DateTime? reminder;
  final BigInt color;
  final int? noteTypeId;
  final int? labelId;
  const NoteEntityData(
      {required this.id,
      required this.title,
      required this.description,
      required this.label,
      required this.timeEdited,
      required this.isDoneTask,
      required this.isPinned,
      this.reminder,
      required this.color,
      this.noteTypeId,
      this.labelId});
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
    if (!nullToAbsent || reminder != null) {
      map['reminder'] = Variable<DateTime>(reminder);
    }
    map['color'] = Variable<BigInt>(color);
    if (!nullToAbsent || noteTypeId != null) {
      map['noteTypeId'] = Variable<int>(noteTypeId);
    }
    if (!nullToAbsent || labelId != null) {
      map['labelId'] = Variable<int>(labelId);
    }
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
      reminder: reminder == null && nullToAbsent
          ? const Value.absent()
          : Value(reminder),
      color: Value(color),
      noteTypeId: noteTypeId == null && nullToAbsent
          ? const Value.absent()
          : Value(noteTypeId),
      labelId: labelId == null && nullToAbsent
          ? const Value.absent()
          : Value(labelId),
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
      reminder: serializer.fromJson<DateTime?>(json['reminder']),
      color: serializer.fromJson<BigInt>(json['color']),
      noteTypeId: serializer.fromJson<int?>(json['noteTypeId']),
      labelId: serializer.fromJson<int?>(json['labelId']),
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
      'reminder': serializer.toJson<DateTime?>(reminder),
      'color': serializer.toJson<BigInt>(color),
      'noteTypeId': serializer.toJson<int?>(noteTypeId),
      'labelId': serializer.toJson<int?>(labelId),
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
          Value<DateTime?> reminder = const Value.absent(),
          BigInt? color,
          Value<int?> noteTypeId = const Value.absent(),
          Value<int?> labelId = const Value.absent()}) =>
      NoteEntityData(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        label: label ?? this.label,
        timeEdited: timeEdited ?? this.timeEdited,
        isDoneTask: isDoneTask ?? this.isDoneTask,
        isPinned: isPinned ?? this.isPinned,
        reminder: reminder.present ? reminder.value : this.reminder,
        color: color ?? this.color,
        noteTypeId: noteTypeId.present ? noteTypeId.value : this.noteTypeId,
        labelId: labelId.present ? labelId.value : this.labelId,
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
          ..write('reminder: $reminder, ')
          ..write('color: $color, ')
          ..write('noteTypeId: $noteTypeId, ')
          ..write('labelId: $labelId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, label, timeEdited,
      isDoneTask, isPinned, reminder, color, noteTypeId, labelId);
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
          other.reminder == this.reminder &&
          other.color == this.color &&
          other.noteTypeId == this.noteTypeId &&
          other.labelId == this.labelId);
}

class NoteEntityCompanion extends UpdateCompanion<NoteEntityData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> label;
  final Value<DateTime> timeEdited;
  final Value<bool> isDoneTask;
  final Value<bool> isPinned;
  final Value<DateTime?> reminder;
  final Value<BigInt> color;
  final Value<int?> noteTypeId;
  final Value<int?> labelId;
  const NoteEntityCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.label = const Value.absent(),
    this.timeEdited = const Value.absent(),
    this.isDoneTask = const Value.absent(),
    this.isPinned = const Value.absent(),
    this.reminder = const Value.absent(),
    this.color = const Value.absent(),
    this.noteTypeId = const Value.absent(),
    this.labelId = const Value.absent(),
  });
  NoteEntityCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required String label,
    required DateTime timeEdited,
    required bool isDoneTask,
    required bool isPinned,
    this.reminder = const Value.absent(),
    required BigInt color,
    this.noteTypeId = const Value.absent(),
    this.labelId = const Value.absent(),
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
    Expression<DateTime>? reminder,
    Expression<BigInt>? color,
    Expression<int>? noteTypeId,
    Expression<int>? labelId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (label != null) 'label': label,
      if (timeEdited != null) 'timeEdited': timeEdited,
      if (isDoneTask != null) 'isDoneTask': isDoneTask,
      if (isPinned != null) 'isPinned': isPinned,
      if (reminder != null) 'reminder': reminder,
      if (color != null) 'color': color,
      if (noteTypeId != null) 'noteTypeId': noteTypeId,
      if (labelId != null) 'labelId': labelId,
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
      Value<DateTime?>? reminder,
      Value<BigInt>? color,
      Value<int?>? noteTypeId,
      Value<int?>? labelId}) {
    return NoteEntityCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      label: label ?? this.label,
      timeEdited: timeEdited ?? this.timeEdited,
      isDoneTask: isDoneTask ?? this.isDoneTask,
      isPinned: isPinned ?? this.isPinned,
      reminder: reminder ?? this.reminder,
      color: color ?? this.color,
      noteTypeId: noteTypeId ?? this.noteTypeId,
      labelId: labelId ?? this.labelId,
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
    if (reminder.present) {
      map['reminder'] = Variable<DateTime>(reminder.value);
    }
    if (color.present) {
      map['color'] = Variable<BigInt>(color.value);
    }
    if (noteTypeId.present) {
      map['noteTypeId'] = Variable<int>(noteTypeId.value);
    }
    if (labelId.present) {
      map['labelId'] = Variable<int>(labelId.value);
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
          ..write('reminder: $reminder, ')
          ..write('color: $color, ')
          ..write('noteTypeId: $noteTypeId, ')
          ..write('labelId: $labelId')
          ..write(')'))
        .toString();
  }
}

class $LabelEntityTable extends LabelEntity
    with TableInfo<$LabelEntityTable, LabelEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LabelEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, description];
  @override
  String get aliasedName => _alias ?? 'label_entity';
  @override
  String get actualTableName => 'label_entity';
  @override
  VerificationContext validateIntegrity(Insertable<LabelEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LabelEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LabelEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $LabelEntityTable createAlias(String alias) {
    return $LabelEntityTable(attachedDatabase, alias);
  }
}

class LabelEntityData extends DataClass implements Insertable<LabelEntityData> {
  final int id;
  final String description;
  const LabelEntityData({required this.id, required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['description'] = Variable<String>(description);
    return map;
  }

  LabelEntityCompanion toCompanion(bool nullToAbsent) {
    return LabelEntityCompanion(
      id: Value(id),
      description: Value(description),
    );
  }

  factory LabelEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LabelEntityData(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
    };
  }

  LabelEntityData copyWith({int? id, String? description}) => LabelEntityData(
        id: id ?? this.id,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('LabelEntityData(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LabelEntityData &&
          other.id == this.id &&
          other.description == this.description);
}

class LabelEntityCompanion extends UpdateCompanion<LabelEntityData> {
  final Value<int> id;
  final Value<String> description;
  const LabelEntityCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
  });
  LabelEntityCompanion.insert({
    this.id = const Value.absent(),
    required String description,
  }) : description = Value(description);
  static Insertable<LabelEntityData> custom({
    Expression<int>? id,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
    });
  }

  LabelEntityCompanion copyWith({Value<int>? id, Value<String>? description}) {
    return LabelEntityCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LabelEntityCompanion(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $NoteEntityTable noteEntity = $NoteEntityTable(this);
  late final $LabelEntityTable labelEntity = $LabelEntityTable(this);
  late final NotesDao notesDao = NotesDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [noteEntity, labelEntity];
}
