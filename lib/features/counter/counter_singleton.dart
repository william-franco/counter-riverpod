// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/features/counter/counter_provider.dart';

final counterSingleton = StateNotifierProvider<CounterProvider, int>((ref) {
  return CounterProvider();
});
