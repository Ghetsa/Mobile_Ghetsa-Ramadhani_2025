import 'package:flutter/material.dart';

class FabWidget extends StatelessWidget {
  const FabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5), // margin keseluruhan
      child: Column(
        mainAxisSize: MainAxisSize.min, // biar tidak memenuhi layar
        children: [
          const Text(
            "\nTekan tombol LIKE",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 1, 109, 172),
            ),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Tombol FAB ditekan!")),
              );
            },
            tooltip: "Like",
            backgroundColor: const Color.fromARGB(255, 88, 192, 240),
            child: const Icon(Icons.thumb_up),
          ),
        ],
      ),
    );
  }
}
