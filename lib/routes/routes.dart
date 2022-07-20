// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:counter_riverpod/features/counter/counter_view.dart';
import 'package:counter_riverpod/features/setting/setting_view.dart';

class Routes {
  Routes._();

  static const String counter = '/counter';
  static const String setting = '/setting';

  static final routes = <String, WidgetBuilder>{
    counter: (BuildContext context) => const CounterView(),
    setting: (BuildContext context) => const SettingView(),
  };
}
