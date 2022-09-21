// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:counter_riverpod/src/features/counter/counter_view.dart';
import 'package:counter_riverpod/src/features/setting/setting_view.dart';

class Routes {
  Routes._();

  static const String home = '/';
  static const String setting = '/setting';

  static final routes = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        pageBuilder: (context, state) => const CupertinoPage(
          child: CounterView(),
        ),
      ),
      GoRoute(
        path: setting,
        pageBuilder: (context, state) => const CupertinoPage(
          child: SettingView(),
        ),
      ),
    ],
  );
}
