import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

void main(){
  bootstrap();
}

void bootstrap() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(ProviderScope(
      overrides: const [],
      child: MyApplication(),
    ));
  }, (Object error, StackTrace stack) async {
    debugPrint('Error -> ${error.toString()}');
    // await FlutterCrashlytics()
    //     .reportCrash(error, stackTrace, forceCrash: false);
  });
}
