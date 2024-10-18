import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:forms_app/presentation/blocs/blocs.dart';

class CubitFloatingActionButton extends StatelessWidget {
  const CubitFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    final increaseBy = context.read<CounterCubit>().increaseBy;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: '1',
          child: const Text('+3'),
          onPressed: () => increaseBy(3),
        ),
        const SizedBox(height: 15),
        FloatingActionButton(
          heroTag: '2',
          child: const Text('+2'),
          onPressed: () => increaseBy(2),
        ),
        const SizedBox(height: 15),
        FloatingActionButton(
          heroTag: '3',
          child: const Text('+1'),
          onPressed: () => increaseBy(1),
        ),
      ],
    );
  }
}
