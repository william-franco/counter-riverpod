// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:counter_riverpod/src/features/setting/setting_notifier.dart';

final sharedPrefs = FutureProvider<SharedPreferences>((ref) async {
  return await SharedPreferences.getInstance();
});

final settingProvider = StateNotifierProvider<SettingNotifier, bool>((ref) {
  final pref = ref.watch(sharedPrefs).maybeWhen(
        data: (value) => value,
        orElse: () => null,
      );
  return SettingNotifier(pref);
});
