import 'package:flutter/material.dart';

class AdaptiveSize {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;
  
  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }

  // Icon sizes
  static double get smallIcon => _adaptiveSize(24.0, 32.0);
  static double get mediumIcon => _adaptiveSize(32.0, 40.0);
  static double get largeIcon => _adaptiveSize(40.0, 48.0);

  // Spacing
  static double get extraSmallSpacing => _adaptiveSize(4.0, 6.0);
  static double get smallSpacing => _adaptiveSize(8.0, 12.0);
  static double get mediumSpacing => _adaptiveSize(16.0, 24.0);
  static double get largeSpacing => _adaptiveSize(24.0, 32.0);

  // Padding
  static EdgeInsets get screenPadding => EdgeInsets.all(_adaptiveSize(16.0, 24.0));
  static EdgeInsets get cardPadding => EdgeInsets.all(_adaptiveSize(12.0, 16.0));
  
  // Font sizes
  static double get bodyText => _adaptiveSize(14.0, 16.0);
  static double get title => _adaptiveSize(18.0, 24.0);
  static double get headline => _adaptiveSize(24.0, 32.0);

  // Helper method to calculate adaptive sizes
  static double _adaptiveSize(double mobile, double tablet) {
    // Consider device as tablet if width is greater than 600
    bool isTablet = screenWidth > 600;
    
    if (isTablet) {
      return tablet;
    }
    return mobile;
  }
} 