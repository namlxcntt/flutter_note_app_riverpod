import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/background/background_model.dart';
import 'package:flutter_note_app/data/model/bottom_bar_options/bottom_bar_option_model.dart';
import 'package:flutter_note_app/features/create/child/bottom_sheet_select_color_w.dart';
import 'package:flutter_note_app/features/create/create_note_state_provider.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_note_app/utils/extensions.dart';
import 'package:flutter_note_app/widget/app_bar_with_action_text_w.dart';
import 'package:flutter_note_app/widget/bottom_bar_options.dart';
import 'package:flutter_note_app/widget/bottom_sheet_error.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../data/model/app_bar/type_app_bar.dart';

final selectColorState = StateProvider.autoDispose((ref) {
  final listData = ref.read(backgroundDataProvider);
  return listData.first;
});

typedef DoubleError = ({String? titleError, String? contentError});

final _validateProvider = StateProvider.autoDispose<DoubleError>((ref) {
  return (titleError: null, contentError: null);
});

final _provideTextTitleController =
    Provider.autoDispose((ref) => TextEditingController(text: ""));
final _provideTextContentController =
    Provider.autoDispose((ref) => TextEditingController(text: ""));

final isPinnedState = StateProvider.autoDispose((ref) => false);

class CreateNotePage extends ConsumerWidget {
  const CreateNotePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var colorState = ref.watch(selectColorState);
    var statePinned = ref.watch(isPinnedState);
    var titleController = ref.watch(_provideTextTitleController);
    var contentController = ref.watch(_provideTextContentController);
    var errorString = ref.watch(_validateProvider);
    ref.listen(createNoteStateProvider, (previous, next) {
      if (next is CreateSuccess) {
        context.pop();
      } else if (next is CreateError) {
        showModalBottomSheet(
          isDismissible: false,
          isScrollControlled: false,
          context: context,
          builder: (context) => BottomSheetError(
            title: context.getString().ops_problem,
            textButton: context.getString().close,
            onTapButton: () {
              context.pop();
            },
          ),
          backgroundColor: Colors.transparent,
        );
      }
    });
    return Scaffold(
      backgroundColor: colorState.bgColor,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomBarOptions(
        bottomBarOptionModel: BottomBarOptionCreateNote(
            statePinned: statePinned,
            onTapIconMore: () {
              showModalBottomSheet(
                constraints: const BoxConstraints(
                  minHeight: AppConstant.minHeightBottomSheet,
                  maxHeight: AppConstant.maxHeightBottomSheet,
                ),
                isDismissible: true,
                isScrollControlled: false,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) => const BottomSheetSelectColor(),
              );
            },
            onTapPinned: (value) {
              ref.read(isPinnedState.notifier).state = value;
            }),
      ),
      appBar: AppBarApplication(
        typeAppBar: ActionText(
          actionText: context.getString().save,
          actionClick: () {
            if (titleController.text.isNotEmpty &&
                contentController.text.isNotEmpty) {
              ref.read(createNoteStateProvider.notifier).createNote(
                    titleController.text,
                    contentController.text,
                    colorState.bgColor,
                    statePinned,
                  );
            } else {
              ref.read(_validateProvider.notifier).update((state) {
                return (
                  titleError: 'Title is not empty',
                  contentError: 'Content is not empty'
                );
              });
            }
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          AppConstant.sizePrimary,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: AppConstant.size20,
            ),
            TextFormField(
              style: context.textTitle()?.copyWith(
                    fontSize: AppConstant.size36,
                    color: AppColors.colorPrimaryBase,
                  ),
              onChanged: (value) {
                ref.read(_validateProvider.notifier).update((state) {
                  return (
                    titleError: value.isEmpty ? 'Title is not empty' : null,
                    contentError: state.contentError
                  );
                });
              },
              controller: titleController,
              decoration: InputDecoration(
                errorText: errorString.titleError,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: context.getString().create_note_text_title_here,
                hintStyle: context.textTitle()?.copyWith(
                      fontSize: AppConstant.size36,
                      color: AppColors.colorNeutralDarkGrey,
                    ),
              ),
            ),
            const SizedBox(
              height: AppConstant.sizePrimary,
            ),
            Expanded(
              child: TextFormField(
                expands: true,
                maxLines: null,
                style: context.textTitle()?.copyWith(
                      fontSize: AppConstant.size20,
                      color: AppColors.colorPrimaryBase,
                    ),
                onChanged: (value) {
                  ref.read(_validateProvider.notifier).update((state) {
                    return (
                      titleError: state.titleError,
                      contentError:
                          value.isEmpty ? 'Content is not empty' : null
                    );
                  });
                },
                controller: contentController,
                decoration: InputDecoration(
                  errorText: errorString.contentError,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: context.getString().create_note_description_here,
                  hintStyle: context.textTitle()?.copyWith(
                      fontSize: AppConstant.size20,
                      color: AppColors.colorNeutralDarkGrey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
