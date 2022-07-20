// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:counter_riverpod/features/counter/counter_singleton.dart';
import 'package:counter_riverpod/routes/routes.dart';
import 'package:counter_riverpod/widgets/atoms/text_atom.dart';
import 'package:counter_riverpod/widgets/molecules/floating_button_molecule.dart';

class CounterView extends ConsumerWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countData = ref.watch(counterSingleton);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const TextAtom(text: 'Counter'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => Navigator.of(context).pushNamed(Routes.setting),
          )
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
                text: '$countData',
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
            heroTag: 'Decrement',
            child: const Icon(Icons.remove_outlined),
            onPressed: () => ref.read(counterSingleton.notifier).decrement(),
          ),
          const SizedBox(height: 8.0),
          FloatingButtonMolecule(
            heroTag: 'Increment',
            child: const Icon(Icons.add_outlined),
            onPressed: () => ref.read(counterSingleton.notifier).increment(),
          ),
        ],
      ),
    );
  }
}
