import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:link/presentation/login/cubit/login_screen_cubit.dart';
import 'package:link/presentation/login/view/login_screen.dart';
import 'package:link/presentation/notifications/view/notifications_screen.dart';
import 'package:link/presentation/splash/cubit/splash_screen_cubit.dart';
import 'package:link/presentation/splash/view/splash_screen.dart';

class RouteConfig {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String notifications = '/notifications';

  static final GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => BlocProvider(
          create: (context) => SplashScreenCubit(),
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => BlocProvider(
          create: (context) => LoginScreenCubit(),
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: notifications,
        builder: (context, state) => const NotificationsScreen(),
      ),
    ],
  );
}
