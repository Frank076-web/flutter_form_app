import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:forms_app/presentation/blocs/blocs.dart';

class BlockFloatingActionButton extends StatelessWidget {
  const BlockFloatingActionButton({super.key});

  void increaseCounterBy(BuildContext context, int value) {
    context.read<CounterBloc>().add(CounterIncreasedEvent(value));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: '1',
          child: const Text('+3'),
          onPressed: () => increaseCounterBy(context, 3),
        ),
        const SizedBox(height: 15),
        FloatingActionButton(
          heroTag: '2',
          child: const Text('+2'),
          onPressed: () => increaseCounterBy(context, 2),
        ),
        const SizedBox(height: 15),
        FloatingActionButton(
          heroTag: '3',
          child: const Text('+1'),
          onPressed: () => increaseCounterBy(context, 1),
        ),
      ],
    );
  }
}
