import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker_test/app/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //TODO: мультиязычность.
      title: 'Habit Tracker',
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.blumineBlue  ),
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
