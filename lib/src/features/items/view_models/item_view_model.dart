// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/src/features/items/models/item_model.dart';

abstract base class ItemsViewModel extends StateNotifier<ItemsModel> {
  ItemsViewModel() : super(ItemsModel());

  void addItemToList();
  void removeItemFromList();
  void removeAllItems();
}

base class ItemsViewModelImpl extends StateNotifier<ItemsModel>
    implements ItemsViewModel {
  ItemsViewModelImpl() : super(ItemsModel());

  @override
  void addItemToList() {
    state.count++;
    state.items.add(state.count);
    // state = [...state];
    _debug();
  }

  @override
  void removeItemFromList() {
    state.count > 0 ? state.count-- : 0;
    state.items.isNotEmpty ? state.items.removeLast() : 0;
    // state = [...state];
    _debug();
  }

  @override
  void removeAllItems() {
    state.count = 0;
    state.items.clear();
    // state = [...state];
    _debug();
  }

  void _debug() {
    log('List item: ${state.items.length}');
  }
}
