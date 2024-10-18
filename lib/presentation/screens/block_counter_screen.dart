import 'package:flutter/material.dart';

import 'package:forms_app/presentation/widgets/widgets.dart';

class BlockCounterScreen extends StatelessWidget {
  const BlockCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BlockAppbar(),
      floatingActionButton: BlockFloatingActionButton(),
      body: Center(
        child: Text('Counter value: '),
      ),
    );
  }
}
