import 'package:flutter/material.dart';
import 'dart:io';
import 'filter_carousel.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Kita buat AppBar dengan tombol kembali otomatis
      appBar: AppBar(title: const Text('Filter Photo - 2341720004')),
      // PhotoFilterCarousel menerima path file foto
      body: PhotoFilterCarousel(imagePath: imagePath),
    );
  }
}
