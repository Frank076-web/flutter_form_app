import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:forms_app/presentation/blocs/blocs.dart';

class CubitAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CubitAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: context.select((CounterCubit cubit) {
        return Text('Cubit Counter: ${cubit.state.transactionCount}');
      }),
      actions: [
        context.select(
          (CounterCubit cubit) {
            return IconButton(
              onPressed: () => cubit.reset(),
              icon: const Icon(Icons.refresh_rounded),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
