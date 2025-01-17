part of 'registration_bloc.dart';

sealed class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object> get props => [];
}

class RegisterCustomer extends RegistrationEvent {
  final BuildContext context;
  final String fName;
  final String lName;
  final String phoneNo;
  final String address;
  final String username;
  final String password;

  const RegisterCustomer({
    required this.context,
    required this.fName,
    required this.lName,
    required this.phoneNo,
    required this.address,
    required this.username,
    required this.password,
  });
}

class NavigateToLoginEvent extends RegistrationEvent {
  final BuildContext context;

  const NavigateToLoginEvent({required this.context});

  @override
  List<Object> get props => [context];
}
