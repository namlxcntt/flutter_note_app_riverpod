import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/app_bar/type_app_bar.dart';
import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_note_app/widget/app_bar_with_action_text_w.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CompleteTaskPage extends ConsumerStatefulWidget {
  const CompleteTaskPage({super.key});

  @override
  ConsumerState createState() => _CompleteTaskPageState();
}

class _CompleteTaskPageState extends ConsumerState<CompleteTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithActionText(
          typeAppBar: TypeAppBar.actionIcon(

              actionClick: () {},
              iconSource: Assets.iconsIcSettings)),
      body: Center(
        child: Text('Complete Task Screen'),
      ),
    );
  }
}
