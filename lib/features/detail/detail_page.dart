import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/app_bar/type_app_bar.dart';
import 'package:flutter_note_app/data/model/bottom_bar_options/bottom_bar_option_model.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/features/detail/child/bts_pinned_success.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/extensions.dart';
import 'package:flutter_note_app/utils/logger.dart';
import 'package:flutter_note_app/widget/app_bar_with_action_text_w.dart';
import 'package:flutter_note_app/widget/bottom_bar_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../theme/colors.dart';
import '../../utils/const.dart';
import 'child/bottom_sheet_more_detail_note_w.dart';
import 'state/detail_page_state_provider.dart';

class DetailNotePage extends ConsumerWidget {
  final int idNotes;

  const DetailNotePage({super.key, required this.idNotes});

  Future<bool> updateNote(WidgetRef ref, NoteModel noteModel) async {
    return ref.read(updateNoteProvider(noteModel).future);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var streamData = ref.watch(detailPageStateProvider(idNotes));
    return Scaffold(
      backgroundColor: streamData.value != null
          ? Color(streamData.value!.color.toInt())
          : Colors.white,
      bottomNavigationBar: streamData.when(data: (noteModel) {
        return BottomBarOptions(
          bottomBarOptionModel: BottomBarOptionDetailNote(
              onTapIconMore: () {
                showModalBottomSheet(
                  isDismissible: true,
                  isScrollControlled: false,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) =>
                      BottomSheetMoreDetailNote(noteModel, (color) {
                    var noteUpdate =
                        noteModel.copyWith(color: BigInt.from(color.value));
                    updateNote(ref, noteUpdate);
                  }),
                );
              },
              onTapPinned: (value) {
                var noteCopy = noteModel.copyWith(isPinned: value);
                value.logInfo();
                updateNote(ref, noteCopy).then((stateUpdate) {
                  if (stateUpdate && value) {
                    showModalBottomSheet(
                      isDismissible: true,
                      isScrollControlled: false,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => const BottomSheetPinnedSuccess(),
                    );
                  }
                });
              },
              onTapSearch: () {
                showModalBottomSheet(
                    context: context, builder: (context) => Container());
              },
              leftText:
                  '${context.getString().last_edited} ${noteModel.timeEdited.hour}.${noteModel.timeEdited.minute}',
              statePinned: noteModel.isPinned),
        );
      }, error: (error, stackTrace) {
        return null;
      }, loading: () {
        return null;
      }),
      appBar: AppBarApplication(typeAppBar: DefaultAppBar()),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppConstant.sizePrimary),
              child: streamData.when(
                data: (NoteModel noteModel) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: AppConstant.size20,
                      ),
                      Text(
                        noteModel.title,
                        style: context.textTitle()?.copyWith(
                              fontSize: AppConstant.size36,
                              color: AppColors.colorNeutralBlack,
                            ),
                      ),
                      const SizedBox(
                        height: AppConstant.size20,
                      ),
                      Text(
                        noteModel.description,
                        style: context.textBaseRegular()?.copyWith(
                              fontSize: AppConstant.size18,
                              color: AppColors.colorNeutralDarkGrey,
                            ),
                      ),
                    ],
                  );
                },
                error: (Object error, StackTrace stackTrace) {
                  return const SizedBox();
                },
                loading: () {
                  LogUtils.instance.i('loading');
                  return const SizedBox();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
