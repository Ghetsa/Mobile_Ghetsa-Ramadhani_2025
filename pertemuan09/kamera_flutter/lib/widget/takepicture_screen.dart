import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'displaypicture_screen.dart';

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.cameras,
  });

  final List<CameraDescription> cameras;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  int _selectedCameraIndex = 0; // Indeks kamera aktif

  @override
  void initState() {
    super.initState();
    _initCamera(widget.cameras[_selectedCameraIndex]);
  }

  void _initCamera(CameraDescription cameraDescription) {
    _controller = CameraController(cameraDescription, ResolutionPreset.medium);
    _initializeControllerFuture = _controller.initialize();
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Fungsi untuk ganti kamera depan/belakang
  void _switchCamera() {
    if (widget.cameras.length < 2) return; // kalau cuma ada 1 kamera, abaikan

    _selectedCameraIndex =
        (_selectedCameraIndex + 1) % widget.cameras.length; // toggle kamera
    _initCamera(widget.cameras[_selectedCameraIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Take a picture - 2341720004'), // ganti dengan NIM kamu
        actions: [
          IconButton(
            icon: const Icon(Icons.cameraswitch),
            tooltip: 'Ganti kamera depan/belakang',
            onPressed: _switchCamera,
          ),
        ],
      ),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),

      // Tombol untuk mengambil foto
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            await _initializeControllerFuture;
            final image = await _controller.takePicture();

            if (!context.mounted) return;

            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    DisplayPictureScreen(imagePath: image.path),
              ),
            );
          } catch (e) {
            print('Error saat mengambil foto: $e');
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
