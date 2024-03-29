// Dart imports:
import 'dart:developer';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/src/features/bottom/models/bottom_model.dart';

abstract base class BottomViewModel extends StateNotifier<BottomModel> {
  BottomViewModel() : super(BottomModel());

  void changeIndexBottom({required int index});
}

base class BottomViewModelImpl extends StateNotifier<BottomModel>
    implements BottomViewModel {
  BottomViewModelImpl() : super(BottomModel());

  @override
  void changeIndexBottom({required int index}) {
    state.indexTab = index;
    _debug();
  }

  void _debug() {
    log('Current tab: ${state.indexTab}');
  }
}
