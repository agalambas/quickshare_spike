import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (_) => const Quickshare(),
        '/home': (_) => const Scaffold(
              body: Center(
                child: Text('Hello World!'),
              ),
            ),
        '/quickshare': (_) => const Quickshare(),
      },
    );
  }
}

class Quickshare extends StatelessWidget {
  const Quickshare({super.key});

  void closeExtension() {
    print('exit');
    exit(0);
  }

  Future<void> sendToCar(BuildContext context) async {
    print('sendToCar');
  }

  Future<void> openApp(BuildContext context) async {
    print('openApp');
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          GestureDetector(onTap: closeExtension),
          Container(
            padding: const EdgeInsets.all(16).add(
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(
                  onPressed: () => sendToCar(context),
                  child: const Text('Send to My BMW'),
                ),
                OutlinedButton(
                  onPressed: () => openApp(context),
                  child: const Text('Open the app'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}