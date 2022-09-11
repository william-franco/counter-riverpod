// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:counter_riverpod/src/widgets/atoms/text_atom.dart';

void main() {
  testWidgets('TextAtom', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: TextAtom(text: 'T'))),
    );

    expect(find.text('T'), findsOneWidget);
    expect(find.text(''), findsNothing);
  });
}
