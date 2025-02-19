import 'package:flutter/material.dart';
import 'package:link/infrastructure/routing/route_config.dart';
import 'package:link/utils/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    print('MyApp initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('MyApp dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('MyApp build');
    return MaterialApp.router(
      title: 'bibliotheca',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Add other theme properties
      ),
      routerConfig: RouteConfig.router,
      debugShowCheckedModeBanner: false,
    );
  }
}