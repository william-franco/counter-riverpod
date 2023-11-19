// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/src/features/bottom/models/bottom_model.dart';
import 'package:counter_riverpod/src/features/bottom/view_models/bottom_view_model.dart';
import 'package:counter_riverpod/src/features/counter/models/counter_model.dart';
import 'package:counter_riverpod/src/features/counter/view_models/counter_view_model.dart';
import 'package:counter_riverpod/src/features/items/models/item_model.dart';
import 'package:counter_riverpod/src/features/items/view_models/item_view_model.dart';
import 'package:counter_riverpod/src/features/setting/models/setting_model.dart';
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
      storageService: ref.watch(storageServiceProvider));
});

// View Models
final bottomViewModelProvider =
    StateNotifierProvider<BottomViewModel, BottomModel>((ref) {
  return BottomViewModelImpl();
});

final counterViewModelProvider =
    StateNotifierProvider<CounterViewModel, CounterModel>((ref) {
  return CounterViewModelImpl();
});

final itemViewModelProvider =
    StateNotifierProvider<ItemsViewModel, ItemsModel>((ref) {
  return ItemsViewModelImpl();
});

final settingViewModelProvider =
    StateNotifierProvider<SettingViewModel, SettingModel>((ref) {
  return SettingViewModelImpl(
      settingRepository: ref.watch(settingRepositoryProvider));
});
