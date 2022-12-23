import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Purple Page"), backgroundColor: Colors.purple),
        body: const Center(
          child: Text(
            "Purple Page",
            style: TextStyle(fontSize: 24),
          ),
        ));
  }
}
