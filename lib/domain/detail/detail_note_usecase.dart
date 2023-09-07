import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/data/repository/note_repository.dart';
import 'package:flutter_note_app/domain/stream_use_case.dart';
import 'package:flutter_note_app/domain/use_case.dart';

class DetailNoteUseCase extends StreamUseCase<int, NoteModel> {
  final NoteRepository noteRepository;

  DetailNoteUseCase(this.noteRepository);

  @override
  Stream<NoteModel> execute(int input) {
    return noteRepository.getDetailNote(input);
  }

}
