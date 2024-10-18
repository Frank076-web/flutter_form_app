import 'package:flutter/material.dart';

class BlockAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BlockAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Cubit Counter'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.refresh_rounded),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
