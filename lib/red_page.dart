import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _rastgeliSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (_rastgeliSayi == 0) {
          _rastgeliSayi = Random().nextInt(100);
          Navigator.pop(context, _rastgeliSayi);
        }

        return Future.value(false);
      },
      child: Scaffold(
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
                    _rastgeliSayi = Random().nextInt(100);
                    print(_rastgeliSayi);
                    Navigator.of(context).pop(_rastgeliSayi);
                  },
                  child: const Text("geri don")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    if (Navigator.of(context).canPop()) {
                      print("evet pop olabilir");
                    } else {
                      print("hayir ola bilmez");
                    }
                  },
                  child: const Text("Can pop kullanimi")),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    Navigator.pushNamed(context, '/orangePage');
                  },
                  child: const Text("go to orange")),
            ],
          )),
    );
  }
}
