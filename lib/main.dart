import 'package:flutter/material.dart';
import 'package:mp_tugas10/form_menulogin.dart';
import 'package:mp_tugas10/home_screen.dart';
import 'package:mp_tugas10/form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selamat Datang',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.routes: (context) => const HomeScreen(),
        FormScreen.routes: (context) => const FormScreen(),
        Signup.routes: (context) => const Signup(),
      },
    );
  }
}