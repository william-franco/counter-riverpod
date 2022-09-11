// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() {
    state++;
    _debug();
  }

  void decrement() {
    state--;
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
