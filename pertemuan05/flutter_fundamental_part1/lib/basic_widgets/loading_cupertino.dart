import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingCupertino extends StatelessWidget {
  const LoadingCupertino({Key? key}) : super(key: key);

  void _showCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text("Info"),
          content: const Text("Tombol ditekan!"),
          actions: [
            CupertinoDialogAction(
              child: const Text("OK"),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 228, 243, 255), // background
        borderRadius: BorderRadius.circular(12), // biar sudut rounded
      ),
      // color: const Color.fromARGB(255, 194, 237, 248),
      child: Column(
        children: <Widget>[
          CupertinoButton(
            color: const Color.fromARGB(255, 177, 212, 251),
            child: const Text(
              "Tekan Aku >_<",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
            onPressed: () {
              _showCupertinoDialog(context);
            },
          ),
          const SizedBox(height: 20),
          const CupertinoActivityIndicator(),
        ],
      ),
    );
  }
}
