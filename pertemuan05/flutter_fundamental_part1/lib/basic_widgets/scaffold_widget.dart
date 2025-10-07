import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({Key? key}) : super(key: key);

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 142, 203, 253)),
        borderRadius: BorderRadius.circular(12), // biar sudut rounded
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Anda telah dzikir sebanyak:",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 1, 109, 172),
            ),
          ),
          Text(
            '$_counter',
            style: TextStyle(
              fontSize: 35,
              color: Color.fromARGB(255, 0, 64, 147),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: _incrementCounter,
            icon: const Icon(Icons.add),
            label: const Text("Tambah Dzikir"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 147, 198, 250),
            ),
          ),
        ],
      ),
    );
  }
}
