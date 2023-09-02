// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteModel _$$_NoteModelFromJson(Map<String, dynamic> json) => _$_NoteModel(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      timeEdited: DateTime.parse(json['timeEdited'] as String),
      isDoneTask: json['isDoneTask'] as bool,
      label: json['label'] as String,
      color: BigInt.parse(json['color'] as String),
      isPinned: json['isPinned'] as bool,
    );

Map<String, dynamic> _$$_NoteModelToJson(_$_NoteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'timeEdited': instance.timeEdited.toIso8601String(),
      'isDoneTask': instance.isDoneTask,
      'label': instance.label,
      'color': instance.color.toString(),
      'isPinned': instance.isPinned,
    };
