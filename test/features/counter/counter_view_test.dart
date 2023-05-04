// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:counter_riverpod/src/features/counter/views/counter_view.dart';

void main() {
  group('CounterView', () {
    testWidgets('displays the correct initial value',
        (WidgetTester tester) async {
      const widget = MaterialApp(
        home: ProviderScope(
          child: CounterView(),
        ),
      );

      final initialState = find.text('0');

      await tester.pumpWidget(widget);

      expect(initialState, findsOneWidget);
    });

    testWidgets('increments the counter', (WidgetTester tester) async {
      const widget = MaterialApp(
        home: ProviderScope(
          child: CounterView(),
        ),
      );

      final initialState = find.text('1');
      final addIcon = find.byIcon(Icons.add_outlined);

      await tester.pumpWidget(widget);

      await tester.tap(addIcon);
      await tester.pump();

      expect(initialState, findsOneWidget);
    });

    testWidgets('decrements the counter', (WidgetTester tester) async {
      const widget = MaterialApp(
        home: ProviderScope(
          child: CounterView(),
        ),
      );

      final initialState = find.text('0');
      final removeIcon = find.byIcon(Icons.remove_outlined);

      await tester.pumpWidget(widget);

      await tester.tap(removeIcon);
      await tester.pump();

      expect(initialState, findsOneWidget);
    });
  });
}
