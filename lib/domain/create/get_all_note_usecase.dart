import 'package:flutter_note_app/data/repository/note_repository.dart';

import '../../data/model/note/note_model.dart';
import '../stream_use_case.dart';

class GetAllNoteUseCase
    extends StreamUseCase<Object?, (List<NoteModel>, List<NoteModel>)> {
  final NoteRepository noteRepository;

  GetAllNoteUseCase(this.noteRepository);

  @override
  Stream<(List<NoteModel>, List<NoteModel>)> execute(Object? input) {
    return noteRepository.getListNoteModel().map((event) {
      var listPined = event.where((element) => element.isPinned == true).toList();
      var listInterest = event;
      return (listPined,listInterest);
    });
  }
}