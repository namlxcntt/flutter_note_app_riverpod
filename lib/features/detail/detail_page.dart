import 'package:flutter/material.dart';
import 'package:flutter_note_app/routes/router.dart';
import 'package:go_router/go_router.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('DetailPage'),
            ElevatedButton(onPressed: (){
              context.go(RouteDefine.create.getPath);
            }, child: const Text('Click go to next screen Create'))
          ],
        ),
      ),
    );
  }
}
