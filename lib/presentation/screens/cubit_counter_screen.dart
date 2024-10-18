import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:forms_app/presentation/blocs/blocs.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: const CubitAppbar(),
        floatingActionButton: const CubitFloatingActionButton(),
        body: Center(
          child: BlocBuilder<CounterCubit, CounterState>(
            // buildWhen: (previous, current) => current.counter != previous.counter,
            builder: (context, state) {
              return Text('Counter value: ${state.counter}');
            },
          ),
        ),
      ),
    );
  }
}
