import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8), // atur margin sesuai kebutuhan
      child: const Image(
        image: AssetImage("assets/logo_polinema.png"),
        width: 150,
        height: 150,
        fit: BoxFit.contain,
      ),
    );
  }
}
