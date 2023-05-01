// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/src/features/setting/repositories/setting_repository.dart';

class SettingViewModel extends StateNotifier<bool> {
  final SettingRepository settingRepository;

  SettingViewModel({required this.settingRepository}) : super(false) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    state = await settingRepository.readTheme();
    _debug();
  }

  Future<void> changeTheme(bool isDarkTheme) async {
    state = isDarkTheme;
    await settingRepository.updateTheme(isDarkTheme: isDarkTheme);
    _debug();
  }

  void _debug() {
    log('Dark theme: $state');
  }
}
