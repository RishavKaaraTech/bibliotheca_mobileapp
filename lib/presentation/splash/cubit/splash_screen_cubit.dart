import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:link/infrastructure/routing/route_config.dart';
import 'package:link/presentation/splash/state/splash_screen_state.dart';


class SplashScreenCubit extends Cubit<SplashScreenState> {
  SplashScreenCubit() : super(const SplashScreenInitial());

  Future<void> navigateToLogin(BuildContext context) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      if (context.mounted) {
        // Using GoRouter's named route navigation
        // context.goNamed('login');
        // Alternative using path:
        context.go(RouteConfig.login);
      }
    } catch (e) {
      debugPrint('Navigation error: $e');
    }
  }
}