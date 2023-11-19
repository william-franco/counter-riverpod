// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/src/features/setting/models/setting_model.dart';
import 'package:counter_riverpod/src/features/setting/repositories/setting_repository.dart';

abstract base class SettingViewModel extends StateNotifier<SettingModel> {
  SettingViewModel() : super(SettingModel());

  Future<void> loadTheme();
  Future<void> changeTheme({required bool isDarkTheme});
}

base class SettingViewModelImpl extends StateNotifier<SettingModel>
    implements SettingViewModel {
  final SettingRepository settingRepository;

  SettingViewModelImpl({
    required this.settingRepository,
  }) : super(SettingModel()) {
    loadTheme();
  }

  @override
  Future<void> loadTheme() async {
    state.isDarkTheme = await settingRepository.readTheme();
    _debug();
  }

  @override
  Future<void> changeTheme({required bool isDarkTheme}) async {
    state.isDarkTheme = isDarkTheme;
    await settingRepository.updateTheme(isDarkTheme: isDarkTheme);
    _debug();
  }

  void _debug() {
    log('Dark theme: ${state.isDarkTheme}');
  }
}
