import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Yellow Page"), backgroundColor: Colors.yellow),
        body: const Center(
          child: Text(
            "Red Yellow",
            style: TextStyle(fontSize: 24),
          ),
        ));
  }
}
