import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:link/infrastructure/routing/route_config.dart';
import 'package:link/infrastructure/services/api_service.dart';
import 'package:link/presentation/login/state/login_screen_state.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  final _apiService = ApiService();

  LoginScreenCubit() : super(LoginScreenInitialState());

  Future<void> login({
    required String email, 
    required String password,
    required BuildContext context,  // Add context parameter
  }) async {
    try {
      emit(LoginScreenLoadingState());

      final loginResponse = await _apiService.login(
        email: email,
        password: password,
      );
      
      // Store token in secure storage if needed
      // await _secureStorage.write(key: 'token', value: loginResponse.token);
      
      emit(LoginScreenLoadedState(
        user: loginResponse.user,
        token: loginResponse.token,
      ));

      // Navigate to notifications screen after successful login
      if (!context.mounted) return;
      context.go(RouteConfig.notifications);
      
    } catch (error) {
      emit(LoginScreenErrorState());
    }
  }

  void signInWithGoogle() {
    emit(LoginScreenLoadingState());
    // Implement Google sign-in
  }
}
