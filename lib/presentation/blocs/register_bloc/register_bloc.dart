import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:forms_app/infrastructure/inputs/inputs.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterFormState> {
  RegisterBloc() : super(const RegisterFormState()) {
    on<FormSubmittedEvent>(_onSubmitted);
    on<NameChangedEvent>(_onNameChange);
    on<EmailChangedEvent>(_onEmailChange);
    on<PasswordChangedEvent>(_onPasswordChange);
    on<FormStateChangedEvent>(_onFormStateChange);
  }

  void _onSubmitted(FormSubmittedEvent event, Emitter<RegisterFormState> emit) {
    emit(state.copyWith(
      formStatus: FormStatus.validating,
      name: Username.dirty(state.name.value),
      email: Email.dirty(state.email.value),
      password: Password.dirty(state.password.value),
      isValid: Formz.validate([state.name, state.password]),
    ));

    print(state);
  }

  void _onNameChange(NameChangedEvent event, Emitter<RegisterFormState> emit) {
    final username = Username.dirty(event.name);

    emit(state.copyWith(
      name: username,
      isValid: Formz.validate([username, state.password]),
    ));
  }

  void _onEmailChange(
      EmailChangedEvent event, Emitter<RegisterFormState> emit) {
    final email = Email.dirty(event.email);

    emit(state.copyWith(
      email: email,
      isValid: Formz.validate([email, state.name, state.password]),
    ));
  }

  void _onPasswordChange(
      PasswordChangedEvent event, Emitter<RegisterFormState> emit) {
    final password = Password.dirty(event.password);

    emit(state.copyWith(
      password: password,
      isValid: Formz.validate([password, state.name]),
    ));
  }

  void _onFormStateChange(
      FormStateChangedEvent event, Emitter<RegisterFormState> emit) {
    emit(state.copyWith(formStatus: event.status));
  }
}
