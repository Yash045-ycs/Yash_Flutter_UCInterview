import 'package:flutter/material.dart';
import 'screen/auth_screen.dart';
import 'screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  title: 'Login & Signup UI',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.indigo,
    scaffoldBackgroundColor: Colors.indigo[50],
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => const AuthScreen(),
    '/home': (context) => const HomeScreen(),
  },
);
}
}
