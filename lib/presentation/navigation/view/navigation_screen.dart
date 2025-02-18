import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:link/presentation/navigation/cubit/bottom_navigation_cubit.dart';
import 'package:link/presentation/navigation/view/bottom_navigation.dart';
import 'package:link/presentation/notifications/view/notifications_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final _pages = const [
    Center(child: Text('Favorites')),
    NotificationsScreen(),
    Center(child: Text('Map')),
    Center(child: Text('Chat')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, NavigationTab>(
      builder: (context, state) {
        return Scaffold(
          body: _pages[state.index],
          bottomNavigationBar: const BottomNavigationWidget(),
        );
      },
    );
  }
} 