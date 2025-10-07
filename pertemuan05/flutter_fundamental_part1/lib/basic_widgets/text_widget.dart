import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      
      "Nama saya Ghetsa Ramadhani Riska Arryanti\nSaya sedang belajar Pemrograman Mobile",
      style: TextStyle(color: Color.fromARGB(255, 54, 174, 244), fontSize: 14),
      textAlign: TextAlign.center);
  }
}