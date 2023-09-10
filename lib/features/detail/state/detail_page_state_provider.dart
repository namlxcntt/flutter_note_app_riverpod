import 'dart:ui';

import 'package:flutter_note_app/data/model/background/background_model.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/domain/di/use_case_provider.dart';
import 'package:flutter_note_app/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final detailPageStateProvider = StreamProvider.autoDispose.family<NoteModel, int>((ref, input) {
  var useCase = ref.read(detailNoteUseCaseProvider);
  var stream = useCase.execute(input);
  ref.onDispose(() {
    LogUtils.instance.i('Dispose Detail Page Provider');
  });
  return stream;
});

final updateNoteProvider = FutureProvider.autoDispose.family<bool, NoteModel>((ref, input) async {
  final updateNoteUseCase = ref.read(updateNoteUseCaseProvider);
  var noteUpdate = input.copyWith(timeEdited: DateTime.now());
  var updateState = await updateNoteUseCase.execute(noteUpdate);
  return updateState;
});

final selectColorDetailState = StateProvider.autoDispose.family<BackgroundModel,NoteModel>((ref,input) {
  return BackgroundModel(bgColor: Color(input.color.toInt()));
});
