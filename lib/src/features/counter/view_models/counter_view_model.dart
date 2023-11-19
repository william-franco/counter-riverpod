// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/src/features/counter/models/counter_model.dart';

abstract base class CounterViewModel extends StateNotifier<CounterModel> {
  CounterViewModel() : super(CounterModel());

  void increment();
  void decrement();
}

base class CounterViewModelImpl extends StateNotifier<CounterModel>
    implements CounterViewModel {
  CounterViewModelImpl() : super(CounterModel());

  @override
  void increment() {
    state.count++;
    _debug();
  }

  @override
  void decrement() {
    state.count--;
    _debug();
  }

  void _debug() {
    log('Counter: ${state.count}');
  }
}
