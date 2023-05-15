import 'package:flutter/material.dart';
import 'package:simobiplus/theme/app_theme.dart';
import './pages/introduction/introduction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simobi Plus',
      theme: AppTheme().themeData,
      home: const Introduction(),
    );
  }
}
