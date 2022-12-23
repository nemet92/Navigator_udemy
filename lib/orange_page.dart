import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Orange Page"), backgroundColor: Colors.orange),
        body: const Center(
          child: Text(
            "Orange Page",
            style: TextStyle(fontSize: 24),
          ),
        ));
  }
}
