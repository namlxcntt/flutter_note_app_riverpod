import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/data/repository/note_repository.dart';
import 'package:flutter_note_app/domain/use_case.dart';

class UpdateNoteUseCase extends UseCase<NoteModel, bool> {
  final NoteRepository noteRepository;

  UpdateNoteUseCase(this.noteRepository);

  @override
  Future<bool> execute(NoteModel input) async {
    return await noteRepository.updateNoteModel(input);
  }
}
