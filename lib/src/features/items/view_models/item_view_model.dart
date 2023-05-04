// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemsViewModel extends StateNotifier<List<int>> {
  ItemsViewModel() : super([]);

  int _count = 0;

  void addItemToList() {
    _count++;
    state.add(_count);
    state = [...state];
    _debug();
  }

  void removeItemFromList() {
    _count > 0 ? _count-- : 0;
    state.isNotEmpty ? state.removeLast() : 0;
    state = [...state];
    _debug();
  }

  void removeAllItems() {
    _count = 0;
    state.clear();
    state = [...state];
    _debug();
  }

  void _debug() {
    log('List item: ${state.length}');
  }
}
