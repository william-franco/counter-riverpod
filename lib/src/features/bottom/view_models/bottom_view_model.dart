// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract base class BottomViewModel extends StateNotifier<int> {
  BottomViewModel() : super(0);

  void changeIndexBottom({required int index});
}

base class BottomViewModelImpl extends StateNotifier<int>
    implements BottomViewModel {
  BottomViewModelImpl() : super(0);

  @override
  void changeIndexBottom({required int index}) {
    state = index;
    _debug();
  }

  void _debug() {
    log('Current tab: $state');
  }
}
