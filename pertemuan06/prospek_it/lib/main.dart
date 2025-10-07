import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const ProspekApp());
}

class ProspekApp extends StatelessWidget {
  const ProspekApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prospek Pekerjaan IT',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.indigo[50],
      ),
      home: HomePage(),
    );
  }
}
