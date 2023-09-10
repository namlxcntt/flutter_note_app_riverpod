import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';

part 'note_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    required int? id,
    required String title,
    required String description,
    required DateTime timeEdited,
    required bool isDoneTask,
    required String label,
    required BigInt color,
    required bool isPinned,
    required DateTime? reminder,
    required int? noteTypeId,
    required int? labelId,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String,Object?> json)  => _$NoteModelFromJson(json);
}
