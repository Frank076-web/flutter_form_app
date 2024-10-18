import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:forms_app/presentation/widgets/widgets.dart';
import 'package:forms_app/presentation/blocs/register_bloc/register_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo usuario'),
      ),
      body: BlocProvider(
        create: (context) => RegisterBloc(),
        child: const _RegisterView(),
      ),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterLogo(size: 100),
              _RegisterForm(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm();

  @override
  Widget build(BuildContext context) {
    final registerBloc = context.watch<RegisterBloc>();

    final username = registerBloc.state.name;
    final password = registerBloc.state.password;
    final email = registerBloc.state.email;

    return Form(
        child: Column(
      children: [
        CustomTextFormField(
          label: 'Nombre de usuario',
          errorMessage: username.errorMessage,
          onChanged: (value) => registerBloc.add(NameChangedEvent(value)),
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
          label: 'Correo electrónico',
          errorMessage: email.errorMessage,
          onChanged: (value) => registerBloc.add(EmailChangedEvent(value)),
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
          label: 'Contraseña',
          obscureText: true,
          errorMessage: password.errorMessage,
          onChanged: (value) => registerBloc.add(PasswordChangedEvent(value)),
        ),
        const SizedBox(height: 20),
        FilledButton.tonalIcon(
          onPressed: () {
            registerBloc.add(FormSubmittedEvent());
          },
          icon: const Icon(Icons.save),
          label: const Text('Crear usuario'),
        ),
      ],
    ));
  }
}
