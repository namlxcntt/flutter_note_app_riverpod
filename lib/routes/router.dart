import 'package:flutter/material.dart';
import 'package:flutter_note_app/features/complete/complete_page.dart';
import 'package:flutter_note_app/features/create/create_page.dart';
import 'package:flutter_note_app/features/detail/detail_page.dart';
import 'package:flutter_note_app/features/main/main_page.dart';
import 'package:go_router/go_router.dart';

enum RouteDefine {
  home,
  create,
  detail,
  completeTask
}

extension RouterDefineExt on RouteDefine {
  String get getPath {
    return "/$name";
  }

  String get getSubPath {
    return name;
  }
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class NyAppRouter {
  static GoRouter returnRouter() {
    GoRouter router = GoRouter(
      initialLocation: '/',
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          name: RouteDefine.home.name,
          path: "/",
          routes: [
            GoRoute(
              name: RouteDefine.detail.name,
              path: RouteDefine.detail.getSubPath,
              pageBuilder: (context, state) {
                return const MaterialPage(child: DetailPage());
              },
            ),
            GoRoute(
              name: RouteDefine.completeTask.name,
              path: RouteDefine.completeTask.getSubPath,
              pageBuilder: (context, state) {
                return const MaterialPage(child: CompleteTaskPage());
              },
            ),
          ],
          pageBuilder: (context, state) {
            return const MaterialPage(child: MainPage());
          },
        ),
        GoRoute(
          name: RouteDefine.create.name,
          path: RouteDefine.create.getPath,
          pageBuilder: (context, state) {
            return const MaterialPage(child: CreateNotePage());
          },
        ),
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: Scaffold());
      },
    );
    return router;
  }
}
