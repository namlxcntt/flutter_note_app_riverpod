// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) {
  return _NoteModel.fromJson(json);
}

/// @nodoc
mixin _$NoteModel {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get timeEdited => throw _privateConstructorUsedError;
  bool get isDoneTask => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  BigInt get color => throw _privateConstructorUsedError;
  bool get isPinned => throw _privateConstructorUsedError;
  DateTime? get reminder => throw _privateConstructorUsedError;
  int? get noteTypeId => throw _privateConstructorUsedError;
  int? get labelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteModelCopyWith<NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteModelCopyWith<$Res> {
  factory $NoteModelCopyWith(NoteModel value, $Res Function(NoteModel) then) =
      _$NoteModelCopyWithImpl<$Res, NoteModel>;
  @useResult
  $Res call(
      {int? id,
      String title,
      String description,
      DateTime timeEdited,
      bool isDoneTask,
      String label,
      BigInt color,
      bool isPinned,
      DateTime? reminder,
      int? noteTypeId,
      int? labelId});
}

/// @nodoc
class _$NoteModelCopyWithImpl<$Res, $Val extends NoteModel>
    implements $NoteModelCopyWith<$Res> {
  _$NoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? timeEdited = null,
    Object? isDoneTask = null,
    Object? label = null,
    Object? color = null,
    Object? isPinned = null,
    Object? reminder = freezed,
    Object? noteTypeId = freezed,
    Object? labelId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timeEdited: null == timeEdited
          ? _value.timeEdited
          : timeEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDoneTask: null == isDoneTask
          ? _value.isDoneTask
          : isDoneTask // ignore: cast_nullable_to_non_nullable
              as bool,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BigInt,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      reminder: freezed == reminder
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      noteTypeId: freezed == noteTypeId
          ? _value.noteTypeId
          : noteTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      labelId: freezed == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteModelCopyWith<$Res> implements $NoteModelCopyWith<$Res> {
  factory _$$_NoteModelCopyWith(
          _$_NoteModel value, $Res Function(_$_NoteModel) then) =
      __$$_NoteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String title,
      String description,
      DateTime timeEdited,
      bool isDoneTask,
      String label,
      BigInt color,
      bool isPinned,
      DateTime? reminder,
      int? noteTypeId,
      int? labelId});
}

/// @nodoc
class __$$_NoteModelCopyWithImpl<$Res>
    extends _$NoteModelCopyWithImpl<$Res, _$_NoteModel>
    implements _$$_NoteModelCopyWith<$Res> {
  __$$_NoteModelCopyWithImpl(
      _$_NoteModel _value, $Res Function(_$_NoteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? timeEdited = null,
    Object? isDoneTask = null,
    Object? label = null,
    Object? color = null,
    Object? isPinned = null,
    Object? reminder = freezed,
    Object? noteTypeId = freezed,
    Object? labelId = freezed,
  }) {
    return _then(_$_NoteModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timeEdited: null == timeEdited
          ? _value.timeEdited
          : timeEdited // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isDoneTask: null == isDoneTask
          ? _value.isDoneTask
          : isDoneTask // ignore: cast_nullable_to_non_nullable
              as bool,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BigInt,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      reminder: freezed == reminder
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      noteTypeId: freezed == noteTypeId
          ? _value.noteTypeId
          : noteTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      labelId: freezed == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoteModel implements _NoteModel {
  const _$_NoteModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.timeEdited,
      required this.isDoneTask,
      required this.label,
      required this.color,
      required this.isPinned,
      required this.reminder,
      required this.noteTypeId,
      required this.labelId});

  factory _$_NoteModel.fromJson(Map<String, dynamic> json) =>
      _$$_NoteModelFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime timeEdited;
  @override
  final bool isDoneTask;
  @override
  final String label;
  @override
  final BigInt color;
  @override
  final bool isPinned;
  @override
  final DateTime? reminder;
  @override
  final int? noteTypeId;
  @override
  final int? labelId;

  @override
  String toString() {
    return 'NoteModel(id: $id, title: $title, description: $description, timeEdited: $timeEdited, isDoneTask: $isDoneTask, label: $label, color: $color, isPinned: $isPinned, reminder: $reminder, noteTypeId: $noteTypeId, labelId: $labelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timeEdited, timeEdited) ||
                other.timeEdited == timeEdited) &&
            (identical(other.isDoneTask, isDoneTask) ||
                other.isDoneTask == isDoneTask) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.reminder, reminder) ||
                other.reminder == reminder) &&
            (identical(other.noteTypeId, noteTypeId) ||
                other.noteTypeId == noteTypeId) &&
            (identical(other.labelId, labelId) || other.labelId == labelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      timeEdited,
      isDoneTask,
      label,
      color,
      isPinned,
      reminder,
      noteTypeId,
      labelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteModelCopyWith<_$_NoteModel> get copyWith =>
      __$$_NoteModelCopyWithImpl<_$_NoteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteModelToJson(
      this,
    );
  }
}

abstract class _NoteModel implements NoteModel {
  const factory _NoteModel(
      {required final int? id,
      required final String title,
      required final String description,
      required final DateTime timeEdited,
      required final bool isDoneTask,
      required final String label,
      required final BigInt color,
      required final bool isPinned,
      required final DateTime? reminder,
      required final int? noteTypeId,
      required final int? labelId}) = _$_NoteModel;

  factory _NoteModel.fromJson(Map<String, dynamic> json) =
      _$_NoteModel.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get timeEdited;
  @override
  bool get isDoneTask;
  @override
  String get label;
  @override
  BigInt get color;
  @override
  bool get isPinned;
  @override
  DateTime? get reminder;
  @override
  int? get noteTypeId;
  @override
  int? get labelId;
  @override
  @JsonKey(ignore: true)
  _$$_NoteModelCopyWith<_$_NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
