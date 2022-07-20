// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterProvider extends StateNotifier<int> {
  CounterProvider() : super(0);

  void increment() {
    state++;
    _debug();
  }

  void decrement() {
    state > 0 ? state-- : 0;
    _debug();
  }

  void reset() {
    state = 0;
    _debug();
  }

  void _debug() {
    log('Counter: $state');
  }
}