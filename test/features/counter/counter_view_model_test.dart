// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:counter_riverpod/src/features/counter/view_models/counter_view_model.dart';

void main() {
  group('CounterViewModel', () {
    late CounterViewModel viewModel;

    setUp(() {
      viewModel = CounterViewModelImpl();
    });

    test('initial value is 0', () {
      expect(viewModel.state, 0);
    });

    test('increment value', () {
      viewModel.increment();
      expect(viewModel.state, 1);
    });

    test('decrement value', () {
      viewModel.increment();
      viewModel.decrement();
      expect(viewModel.state, 0);
    });

    test('value cannot be less than 0', () {
      viewModel.decrement();
      expect(viewModel.state, 0);
    });
  });
}
