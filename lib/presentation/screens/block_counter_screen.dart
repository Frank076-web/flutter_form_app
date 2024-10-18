import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:forms_app/presentation/blocs/blocs.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BlockAppbar(),
      floatingActionButton: const BlockFloatingActionButton(),
      body: Center(
        child: context.select(
          (CounterBloc bloc) {
            return Text('Counter value: ${bloc.state.counter}');
          },
        ),
      ),
    );
  }
}
