import 'package:flutter/material.dart';
import 'package:quickshare_spike/main_quickshare.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // if inital route is quickshare, run a specific main function
  // to avoid initializing the other modules
  final initialRoute = WidgetsBinding.instance.platformDispatcher.defaultRouteName;
  if (initialRoute == '/quickshare') return mainQuickshare();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('My App'),
        ),
      ),
    );
  }
}
