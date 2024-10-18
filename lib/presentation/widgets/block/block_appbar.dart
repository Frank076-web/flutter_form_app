import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:forms_app/presentation/blocs/blocs.dart';

class BlockAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BlockAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: context.select((CounterBloc bloc) {
        return Text('Cubit Counter ${bloc.state.transactionCount}');
      }),
      actions: [
        IconButton(
          onPressed: () =>
              context.read<CounterBloc>().add(CounterResetedEvent()),
          icon: const Icon(Icons.refresh_rounded),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
