// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract base class ItemsViewModel extends StateNotifier<List<int>> {
  ItemsViewModel() : super([]);

  void addItemToList();
  void removeItemFromList();
  void removeAllItems();
}

base class ItemsViewModelImpl extends StateNotifier<List<int>>
    implements ItemsViewModel {
  ItemsViewModelImpl() : super([]);

  int _count = 0;

  @override
  void addItemToList() {
    _count++;
    state.add(_count);
    state = [...state];
    _debug();
  }

  @override
  void removeItemFromList() {
    _count > 0 ? _count-- : 0;
    state.isNotEmpty ? state.removeLast() : 0;
    state = [...state];
    _debug();
  }

  @override
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
