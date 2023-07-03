// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:counter_riverpod/src/features/items/views/item_view.dart';

void main() {
  group('ItemsView', () {
    testWidgets('ItemsView should show empty state',
        (WidgetTester tester) async {
      const widget = MaterialApp(
        home: ProviderScope(
          child: ItemsView(),
        ),
      );

      final emptyMessage = find.text('The list is empty.');
      final listView = find.byType(ListView);

      await tester.pumpWidget(widget);

      expect(emptyMessage, findsOneWidget);
      expect(listView, findsNothing);
    });

    testWidgets('ItemsView should add and remove items',
        (WidgetTester tester) async {
      const widget = MaterialApp(
        home: ProviderScope(
          child: ItemsView(),
        ),
      );

      final emptyMessage = find.text('The list is empty.');
      final listView = find.byType(ListView);
      final addIcon = find.byIcon(Icons.add_outlined);
      final removeIcon = find.byIcon(Icons.remove_outlined);

      await tester.pumpWidget(widget);

      await tester.tap(addIcon);
      await tester.pump();

      expect(listView, findsOneWidget);
      expect(emptyMessage, findsNothing);

      await tester.tap(removeIcon);
      await tester.pump();

      expect(listView, findsNothing);
      expect(emptyMessage, findsOneWidget);
    });

    testWidgets('ItemsView should add and remove all items',
        (WidgetTester tester) async {
      const widget = MaterialApp(
        home: ProviderScope(
          child: ItemsView(),
        ),
      );

      final emptyMessage = find.text('The list is empty.');
      final listView = find.byType(ListView);
      final addIcon = find.byIcon(Icons.add_outlined);
      final removeAllIcon = find.byIcon(Icons.delete_forever_outlined);

      await tester.pumpWidget(widget);

      await tester.tap(addIcon);
      await tester.pump();

      expect(listView, findsOneWidget);
      expect(emptyMessage, findsNothing);

      await tester.tap(removeAllIcon);
      await tester.pump();

      expect(listView, findsNothing);
      expect(emptyMessage, findsOneWidget);
    });
  });
}
