// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:counter_riverpod/src/features/items/view_models/item_view_model.dart';

void main() {
  group('ItemsViewModel', () {
    late ItemsViewModel viewModel;

    setUp(() {
      viewModel = ItemsViewModelImpl();
    });

    test('initial value is an empty list', () {
      expect(viewModel.debugState, []);
    });

    test('add item to list', () {
      viewModel.addItemToList();
      expect(viewModel.debugState, [1]);
    });

    test('remove item from list', () {
      viewModel.addItemToList();
      viewModel.removeItemFromList();
      expect(viewModel.debugState, []);
    });

    test('remove all items from list', () {
      viewModel.addItemToList();
      viewModel.addItemToList();
      viewModel.removeAllItems();
      expect(viewModel.debugState, []);
    });
  });
}
