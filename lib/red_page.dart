import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _rastgeliSAyi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Red Page"),
          backgroundColor: Colors.red,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Red Page",
                style: TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  _rastgeliSAyi = Random().nextInt(100);
                  print(_rastgeliSAyi);
                  Navigator.of(context).pop(_rastgeliSAyi);
                },
                child: const Text("geri don"))
          ],
        ));
  }
}
