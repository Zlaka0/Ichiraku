import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark, primaryColor: Colors.orange),
         debugShowCheckedModeBanner: false,
      );
  }
}

