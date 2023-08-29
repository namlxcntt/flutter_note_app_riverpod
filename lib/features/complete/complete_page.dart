import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CompleteTaskPage extends ConsumerStatefulWidget {
  const CompleteTaskPage({super.key});

  @override
  ConsumerState createState() => _CompleteTaskPageState();
}

class _CompleteTaskPageState extends ConsumerState<CompleteTaskPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Complete Task Screen'),
      ),
    );
  }
}
