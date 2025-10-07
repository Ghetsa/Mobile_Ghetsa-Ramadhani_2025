import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Hapus MaterialApp & Scaffold di sini, cukup return widget tombol saja
    return Container(
      margin: const EdgeInsets.only(bottom: 10), // margin keseluruhan
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          child: const Text(
            'Show alert',
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 255, 219, 219),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 21, 21),
          ),
          onPressed: () {
            showAlertDialog(context);
          },
        ),
      ),
    );
  }
}

void showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  AlertDialog alert = AlertDialog(
    title: const Text("Stop!!"),
    content: const Text("Kau mencuri hatiku...>_<"),
    actions: [okButton],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
