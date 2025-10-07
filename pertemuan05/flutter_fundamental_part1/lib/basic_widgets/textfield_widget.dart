import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        decoration: const InputDecoration(
          labelText: 'Nama',
          prefixIcon: Icon(Icons.person), // biar lebih informatif
          border: OutlineInputBorder(), // default border
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 111, 188, 252),
            ), // warna border normal
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 5, 46, 93),
              width: 2.0,
            ), // warna border saat fokus
          ),
        ),
        style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 29, 133, 194)),
      ),
    );
  }
}
