import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

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
    print(state);
  }

  void _onNameChange(NameChangedEvent event, Emitter<RegisterFormState> emit) {
    emit(state.copyWith(name: event.name));
  }

  void _onEmailChange(
      EmailChangedEvent event, Emitter<RegisterFormState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChange(
      PasswordChangedEvent event, Emitter<RegisterFormState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onFormStateChange(
      FormStateChangedEvent event, Emitter<RegisterFormState> emit) {
    emit(state.copyWith(formStatus: event.status));
  }
}
