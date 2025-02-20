import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class Helper {
  Helper._();

  static Helper? _helper;

  static Helper get instance {
    return _helper ??= Helper._();
  }

  /// Method to hide keyboard
  void hideSoftKeyBoard() {
    SystemChannels.textInput.invokeMethod("TextInput.hide");
  }
  
}

double getSize(BuildContext context, double size) {
  final isTablet = MediaQuery.of(context).size.width > 600;
  double fraction = 0.0025;
  if (isTablet) {
    return size;
  }
  return MediaQuery.of(context).size.width * size * fraction;
}