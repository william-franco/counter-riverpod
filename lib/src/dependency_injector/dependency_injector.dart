// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/src/features/bottom/view_models/bottom_view_model.dart';
import 'package:counter_riverpod/src/features/counter/view_models/counter_view_model.dart';
import 'package:counter_riverpod/src/features/items/view_models/item_view_model.dart';
import 'package:counter_riverpod/src/features/setting/repositories/setting_repository.dart';
import 'package:counter_riverpod/src/features/setting/view_models/setting_view_model.dart';
import 'package:counter_riverpod/src/services/storage_service.dart';

// Services
final storageServiceProvider = Provider<StorageService>((ref) {
  return StorageServiceImpl();
});

// Repositories
final settingRepositoryProvider = Provider<SettingRepository>((ref) {
  return SettingRepositoryImpl(
    storageService: ref.watch(storageServiceProvider),
  );
});

// View Models
final bottomViewModelProvider =
    StateNotifierProvider<BottomViewModel, int>((ref) {
  return BottomViewModel();
});

final counterViewModelProvider =
    StateNotifierProvider<CounterViewModel, int>((ref) {
  return CounterViewModel();
});

final itemViewModelProvider =
    StateNotifierProvider<ItemsViewModel, List<int>>((ref) {
  return ItemsViewModel();
});

final settingViewModelProvider =
    StateNotifierProvider<SettingViewModel, bool>((ref) {
  return SettingViewModel(
    settingRepository: ref.watch(settingRepositoryProvider),
  );
});
