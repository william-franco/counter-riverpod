// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract base class CounterViewModel extends StateNotifier<int> {
  CounterViewModel() : super(0);

  void increment();
  void decrement();
}

base class CounterViewModelImpl extends StateNotifier<int>
    implements CounterViewModel {
  CounterViewModelImpl() : super(0);

  @override
  void increment() {
    state++;
    _debug();
  }

  @override
  void decrement() {
    state > 0 ? state-- : 0;
    _debug();
  }

  void _debug() {
    log('Counter: $state');
  }
}
