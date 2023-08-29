import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/domain/di/use_case_provider.dart';
import 'package:riverpod/riverpod.dart';

final listNotesProvider = StreamProvider.autoDispose<(List<NoteModel>,List<NoteModel>)>((ref) {
  var useCase = ref.read(getAllNoteUseCaseProvider);
   return useCase.execute(null);
});
