import 'package:flutter/material.dart';
import 'package:revision/config/di/di.dart';
import 'package:revision/features/home/presentation/views/home_view.dart';

void main() {
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeView());
  }
}
