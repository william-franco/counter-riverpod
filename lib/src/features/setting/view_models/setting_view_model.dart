// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/src/features/setting/repositories/setting_repository.dart';

abstract base class SettingViewModel extends StateNotifier<bool> {
  SettingViewModel() : super(false);

  Future<void> loadTheme();
  Future<void> changeTheme({required bool isDarkMode});
}

base class SettingViewModelImpl extends StateNotifier<bool>
    implements SettingViewModel {
  final SettingRepository settingRepository;

  SettingViewModelImpl({required this.settingRepository}) : super(false) {
    loadTheme();
  }

  @override
  Future<void> loadTheme() async {
    state = await settingRepository.readTheme();
    _debug();
  }

  @override
  Future<void> changeTheme({required bool isDarkMode}) async {
    state = isDarkMode;
    await settingRepository.updateTheme(isDarkTheme: isDarkMode);
    _debug();
  }

  void _debug() {
    log('Dark theme: $state');
  }
}
