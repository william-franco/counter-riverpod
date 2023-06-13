// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:counter_riverpod/src/features/bottom/view_models/bottom_view_model.dart';

void main() {
  group('BottomViewModel', () {
    late BottomViewModel viewModel;

    setUp(() {
      viewModel = BottomViewModelImpl();
    });

    test('initial value is 0', () {
      expect(viewModel.state, 0);
    });

    test('change index', () {
      viewModel.changeIndexBottom(index: 1);
      expect(viewModel.state, 1);
    });
  });
}
