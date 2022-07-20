// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/features/setting/setting_singleton.dart';
import 'package:counter_riverpod/routes/routes.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeData = ref.watch(settingProvider);
    return MaterialApp(
      title: 'Counter Riverpod',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeData ? ThemeMode.dark : ThemeMode.light,
      routes: Routes.routes,
      initialRoute: Routes.counter,
    );
  }
}
