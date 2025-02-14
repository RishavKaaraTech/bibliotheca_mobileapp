import 'package:Link/presentation/login_screen/state/login_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  LoginScreenCubit() : super(LoginScreenState());

  void login() {
    emit(LoginScreenLoadingState());
  }
}
