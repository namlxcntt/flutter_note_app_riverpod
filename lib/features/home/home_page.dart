import 'package:flutter/material.dart';
import 'package:flutter_note_app/features/home/child/empty_notes_home_w.dart';
import 'package:flutter_note_app/features/home/child/list_notes_home_w.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_note_app/utils/extensions.dart';
import 'package:flutter_note_app/utils/logger.dart';
import 'package:flutter_note_app/widget/text_under_light_w.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../routes/router.dart';
import 'home_page_state_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final listNotes = ref.watch(listNotesProvider);

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.colorPrimaryBackground,
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstant.sizePrimary,
            vertical: AppConstant.sizePrimary,
          ),
          child: listNotes.when(
              data: (data) {
            return data.$2.isEmpty
                ? const EmptyNotesHome()
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(context.getString().pinned_notes,
                                style: context.textSmBold()),
                            TextUnderLineWidget(
                                text: context.getString().view_all)
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.only(
                                top: AppConstant.sizePrimary),
                            height: Utils.getHeightNoteHome(context),
                            child: ListNotesHomeWidget(
                              data.$1,
                              titleEmpty: context.getString().note_found_pinned,
                              callBack: (note) {
                                context.push(RouteDefine.detail.getPath,
                                    extra: note);
                              },
                            )),
                        const SizedBox(height: AppConstant.size32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              context.getString().interesting_ideal,
                              style: context.textSmBold(),
                            ),
                            TextUnderLineWidget(
                              text: context.getString().view_all,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: AppConstant.sizePrimary),
                          height: Utils.getHeightNoteHome(context),
                          child: ListNotesHomeWidget(
                            data.$2,
                            titleEmpty:
                                context.getString().note_found_interesting,
                            callBack: (note) {
                              context.push(RouteDefine.detail.getPath,
                                  extra: note);
                            },
                          ),
                        ),
                      ],
                    ),
                  );
          }, error: (error, stackTrace) {
            LogUtils.instance.i("Error -> $stackTrace");
          }, loading: () {
            LogUtils.instance.i("Loading State");
          }),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
