// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:counter_riverpod/src/features/items/view_models/item_view_model.dart';

void main() {
  group('ItemsViewModel', () {
    late ItemsViewModel viewModel;

    setUp(() {
      viewModel = ItemsViewModel();
    });

    test('initial value is an empty list', () {
      expect(viewModel.state, []);
    });

    test('add item to list', () {
      viewModel.addItemToList();
      expect(viewModel.state, [1]);
    });

    test('remove item from list', () {
      viewModel.addItemToList();
      viewModel.removeItemFromList();
      expect(viewModel.state, []);
    });

    test('remove all items from list', () {
      viewModel.addItemToList();
      viewModel.addItemToList();
      viewModel.removeAllItems();
      expect(viewModel.state, []);
    });
  });
}
