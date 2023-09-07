import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/domain/di/use_case_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final detailPageStateProvider =
    StreamProvider.autoDispose.family<NoteModel, int>((ref, input) {
  var useCase = ref.read(detailNoteUseCaseProvider);
  return useCase.execute(input);
});
