import 'package:cars/dashboard.dart';
import 'package:cars/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigation(initialScreen: DashboardScreen());
  }
}