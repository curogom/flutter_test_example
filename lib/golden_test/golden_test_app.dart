import 'package:flutter/material.dart';
import 'package:flutter_test_example/golden_test/page/golden_test_page.dart';

class GoldenTestApp extends StatelessWidget {
  const GoldenTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Golden Test App',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.red,
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        ),
      home: const GoldenTestPage(),
    );
  }
}
