import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:forms_app/config/config.dart';
import 'package:forms_app/presentation/blocs/blocs.dart';

void main() => runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      routerConfig: AppRouter.routerConfig,
      title: 'Forms_App',
    );
  }
}
