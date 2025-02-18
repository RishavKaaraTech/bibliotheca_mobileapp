import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationTab { favorites, notifications, map, chat, profile }

class BottomNavigationCubit extends Cubit<NavigationTab> {
  BottomNavigationCubit() : super(NavigationTab.notifications);

  void changeTab(NavigationTab tab) {
    emit(tab);
  }
} 