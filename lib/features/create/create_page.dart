import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/background/background_model.dart';
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

import 'child/bottom_sheet_select_color_w.dart';

final selectColorState = StateProvider.autoDispose((ref) {
  final listData = ref.read(backgroundDataProvider);
  return listData.first;
});

final isPinnedState = StateProvider.autoDispose((ref) => false);

class CreateNotePage extends ConsumerStatefulWidget {
  const CreateNotePage({super.key});

  @override
  ConsumerState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends ConsumerState<CreateNotePage> {
  final TextEditingController _textTitleController = TextEditingController();
  final TextEditingController _textContentController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
    var colorState = ref.watch(selectColorState);
    var statePinned = ref.watch(isPinnedState);

    return Scaffold(
      backgroundColor: colorState.bgColor,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomBarOptions(
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
        statePinned: statePinned,
        onTapPinned: (value) {
          ref.read(isPinnedState.notifier).state = value;
        },
      ),
      appBar: AppBarWithActionText(
        actionText: context.getString().save,
        onClickActionText: () {
          ref.read(createNoteStateProvider.notifier).createNote(
                _textTitleController.text,
                _textContentController.text,
                colorState.bgColor,
                statePinned,
              );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          AppConstant.sizePrimary,
        ),
        child: Column(
          children: [
            TextFormField(
              style: context.textTitle()?.copyWith(
                    fontSize: AppConstant.size36,
                    color: AppColors.colorPrimaryBase,
                  ),
              controller: _textTitleController,
              decoration: InputDecoration(
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
                controller: _textContentController,
                decoration: InputDecoration(
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
