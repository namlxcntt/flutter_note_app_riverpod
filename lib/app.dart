import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_note_app/generated/l10n.dart';
import 'package:flutter_note_app/routes/router.dart';
import 'package:flutter_note_app/theme/themes.dart';

class MyApplication extends StatelessWidget{
   MyApplication({super.key});

   final appRoutes = NyAppRouter.returnRouter();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: true,
      routerConfig: appRoutes,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale.fromSubtags(languageCode: 'en'),
      ],
      theme: Themes.getLightTheme(),
      darkTheme: Themes.getDarkTheme(),
    );
  }

}