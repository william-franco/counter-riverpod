// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:counter_riverpod/src/features/counter/counter_provider.dart';
import 'package:counter_riverpod/src/routes/routes.dart';
import 'package:counter_riverpod/src/widgets/atoms/text_atom.dart';
import 'package:counter_riverpod/src/widgets/molecules/app_bar_molecule.dart';
import 'package:counter_riverpod/src/widgets/molecules/floating_button_molecule.dart';

class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBarMolecule(
        isBack: false,
        title: const TextAtom(text: 'Counter'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => context.push(Routes.setting),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const TextAtom(
                text: 'You have pushed the button this many times:',
              ),
              TextAtom(
                text: '$state',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingButtonMolecule(
            heroTag: 'Increment',
            child: const Icon(Icons.add_outlined),
            onPressed: () => ref.read(counterProvider.notifier).increment(),
          ),
          const SizedBox(height: 8.0),
          FloatingButtonMolecule(
            heroTag: 'Decrement',
            child: const Icon(Icons.remove_outlined),
            onPressed: () => ref.read(counterProvider.notifier).decrement(),
          ),
        ],
      ),
    );
  }
}
