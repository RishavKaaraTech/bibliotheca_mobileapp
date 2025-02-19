import 'package:get_storage/get_storage.dart';

class Preferences {
  static final Preferences _instance = Preferences._internal();

  factory Preferences() => _instance;

  Preferences._internal();

  static final GetStorage _prefs = GetStorage();

  static Future<void> setIsFirstTime(bool value) async {
    _prefs.write('isFirstTime', value);
  }
  
  static bool get isFirstTime => _prefs.read('isFirstTime') ?? true;

  static Future<void> setIsLoggedIn(bool value) async {
    _prefs.write('isLoggedIn', value);
  }

  static bool get isLoggedIn => _prefs.read('isLoggedIn') ?? false;

  static init() {
    _prefs.write('isFirstTime', true);
    _prefs.write('isLoggedIn', false);
  }
  
  static getIsLogin() {
    return _prefs.read('isLoggedIn');
  }
}