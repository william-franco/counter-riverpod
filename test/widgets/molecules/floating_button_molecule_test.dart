// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:counter_riverpod/widgets/molecules/floating_button_molecule.dart';

void main() {
  testWidgets('FloatingButtonMolecule', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingButtonMolecule(
            heroTag: 'FloatingButtonMolecule',
            onPressed: () {},
            child: const Icon(Icons.add_outlined),
          ),
        ),
      ),
    );

    expect(find.byType(FloatingButtonMolecule), findsOneWidget);
    await tester.tap(find.byType(FloatingButtonMolecule));
    await tester.pumpAndSettle();

    // FloatingButtonMolecule myButton = const FloatingButtonMolecule(
    //   child: Text('Update'),
    // );
    // myButton.onPressed!();
  });
}
