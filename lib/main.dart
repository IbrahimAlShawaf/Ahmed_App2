import 'package:flutter/material.dart';
import 'screens/logo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تطبيق الطلاب',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LogoScreen(),
    );
  }
}