part of 'register_bloc.dart';

abstract class RegisterEvent {}

class FormSubmittedEvent extends RegisterEvent {}

class NameChangedEvent extends RegisterEvent {
  final String name;
  NameChangedEvent(this.name);
}

class EmailChangedEvent extends RegisterEvent {
  final String email;
  EmailChangedEvent(this.email);
}

class PasswordChangedEvent extends RegisterEvent {
  final String password;
  PasswordChangedEvent(this.password);
}

class FormStateChangedEvent extends RegisterEvent {
  final FormStatus status;
  FormStateChangedEvent(this.status);
}
