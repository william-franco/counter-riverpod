// Project imports:
import 'package:counter_riverpod/src/constants/constants.dart';
import 'package:counter_riverpod/src/services/storage_service.dart';

abstract interface class SettingRepository {
  Future<bool> readTheme();
  Future<void> updateTheme({required bool isDarkTheme});
}

class SettingRepositoryImpl implements SettingRepository {
  final StorageService storageService;

  SettingRepositoryImpl({
    required this.storageService,
  });

  @override
  Future<bool> readTheme() async {
    final isDarkTheme = await storageService.getBoolValue(
      key: Constants.darkMode,
    );
    return isDarkTheme;
  }

  @override
  Future<void> updateTheme({required bool isDarkTheme}) async {
    await storageService.setBoolValue(
      key: Constants.darkMode,
      value: isDarkTheme,
    );
  }
}
