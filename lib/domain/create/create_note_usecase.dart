import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/data/repository/note_repository.dart';
import 'package:flutter_note_app/domain/use_case.dart';

class CreateNoteUseCase extends UseCase<NoteModel, int> {
  final NoteRepository noteRepository;

  CreateNoteUseCase(this.noteRepository);

  @override
  Future<int> execute(NoteModel input) async {
    return await noteRepository.createNote(input);
  }
}
