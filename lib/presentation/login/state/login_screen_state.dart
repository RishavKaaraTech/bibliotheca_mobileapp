import 'package:link/domain/models/user.dart';

class LoginScreenState {
  const LoginScreenState();
}

class LoginScreenInitialState extends LoginScreenState {
  const LoginScreenInitialState();
}

class LoginScreenLoadingState extends LoginScreenState {
  const LoginScreenLoadingState();
}

class LoginScreenLoadedState extends LoginScreenState {
  final User user;
  final String token;
  const LoginScreenLoadedState({required this.user, required this.token});
}

class LoginScreenErrorState extends LoginScreenState {
  const LoginScreenErrorState();
}

