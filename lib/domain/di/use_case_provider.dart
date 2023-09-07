import 'package:flutter_note_app/domain/create/create_note_usecase.dart';
import 'package:flutter_note_app/domain/create/get_all_note_usecase.dart';
import 'package:flutter_note_app/domain/detail/detail_note_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/di/data_provider.dart';

final createNoteUseCaseProvider = Provider((ref) {
  var noteRepository = ref.read(createNoteRepoProvider);
  return CreateNoteUseCase(noteRepository);
});

final getAllNoteUseCaseProvider = Provider((ref) {
  var noteRepository = ref.read(createNoteRepoProvider);
  var streamUseCase = GetAllNoteUseCase(noteRepository);
  return streamUseCase;
} );

final detailNoteUseCaseProvider = Provider((ref) {
  var noteRepository = ref.read(createNoteRepoProvider);
  var streamUseCase = DetailNoteUseCase(noteRepository);
  return streamUseCase;
});