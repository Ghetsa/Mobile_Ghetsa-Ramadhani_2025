import 'package:flutter/material.dart';
import './views/plan_screen.dart';

void main() => runApp(const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Master Plan App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 253, 248),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 237, 221, 39), // ungu tua
          foregroundColor: Colors.white, // teks putih
          elevation: 3,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 255, 255, 73), // tombol tambah ungu tua
          
        ),
      ),
      home: const PlanScreen(),
    );
  }
}
