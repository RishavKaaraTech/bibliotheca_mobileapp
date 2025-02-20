import 'package:flutter/material.dart';

abstract class AnimationControllerState<T extends StatefulWidget> extends State<T> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _translate;
  late Animation<double> _otpPopup;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _translate = Tween<double>(
      begin: 0,
      end: 6,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _otpPopup = Tween<double>(
      begin: 100,
      end: 16,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  
  
}

