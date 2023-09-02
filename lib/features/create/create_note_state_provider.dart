import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/domain/create/create_note_usecase.dart';
import 'package:flutter_note_app/domain/di/use_case_provider.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_note_app/utils/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createNoteStateProvider =
    StateNotifierProvider<CreateNoteStateNotifier, CreateNoteState>((ref) {
  var useCase = ref.read(createNoteUseCaseProvider);
  return CreateNoteStateNotifier(useCase,ref);
});

class CreateNoteStateNotifier extends StateNotifier<CreateNoteState> {
  CreateNoteStateNotifier(this.createNoteUseCase, this.ref) : super(CreateNoteDefault());

  final CreateNoteUseCase createNoteUseCase;
  final StateNotifierProviderRef ref;

  void createNote(String title, String content, Color colorBackground, bool isPinned) async {
    var noteModel = NoteModel(
      id: null,
      title: title,
      description: content,
      createdTime: DateTime.now(),
      isDoneTask: false,
      label: AppConstant.emptyString,
      color: BigInt.from(colorBackground.value),
      isPinned: isPinned,
    );
    final data = await createNoteUseCase.execute(noteModel);
    if (data != -1) {
      state = CreateSuccess(data);
    } else {
      state = CreateError(AppConstant.emptyString);
    }
  }
}

abstract class CreateNoteState extends Equatable {}

class CreateNoteDefault extends CreateNoteState {
  @override
  List<Object?> get props => [];
}

class CreateSuccess extends CreateNoteState {
  final int status;

  CreateSuccess(this.status);

  @override
  List<Object?> get props => [status];
}

class CreateError extends CreateNoteState {
  final String message;

  CreateError(this.message);

  @override
  List<Object?> get props => [message];
}
