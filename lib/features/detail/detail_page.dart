import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/app_bar/type_app_bar.dart';
import 'package:flutter_note_app/data/model/bottom_bar_options/bottom_bar_option_model.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/extensions.dart';
import 'package:flutter_note_app/widget/app_bar_with_action_text_w.dart';
import 'package:flutter_note_app/widget/bottom_bar_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../theme/colors.dart';
import '../../utils/const.dart';

final isPinnedState = StateProvider.autoDispose((ref) => false);

class DetailNotePage extends ConsumerWidget {
  final NoteModel noteModel;

  const DetailNotePage({super.key, required this.noteModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var statePinned = ref.watch(isPinnedState);

    return Scaffold(
      bottomNavigationBar: BottomBarOptions(
        bottomBarOptionModel: BottomBarOptionDetailNote(
            onTapIconMore: () {
              showModalBottomSheet(
                  context: context, builder: (context) => Container());
            },
            onTapPinned: (value) {
              ref.read(isPinnedState.notifier).state = value;
            },
            onTapSearch: () {},
            leftText:
                '${context.getString().last_edited} ${noteModel.timeEdited.hour}.${noteModel.timeEdited.minute}',
            statePinned: statePinned),
      ),
      appBar: AppBarApplication(typeAppBar: DefaultAppBar()),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppConstant.sizePrimary),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    noteModel.title,
                    style: context.textTitle()?.copyWith(
                          fontSize: AppConstant.size36,
                          color: AppColors.colorPrimaryBase,
                        ),
                  ),
                  const SizedBox(
                    height: AppConstant.size20,
                  ),
                  Text(
                    noteModel.description,
                    style: context.textTitle()?.copyWith(
                          fontSize: AppConstant.size20,
                          color: AppColors.colorPrimaryBase,
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
