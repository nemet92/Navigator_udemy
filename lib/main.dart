import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_udeny/red_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Islemleri"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.red[200]),
                onPressed: () async {
                  int? gelenSayi = await Navigator.push<int>(context,
                      CupertinoPageRoute(builder: (redContext) => RedPage()));
                  print("object $gelenSayi");
                },
                child: const Text("Kirmizi sayfaya kec ios")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.of(context)
                      .push(
                          MaterialPageRoute(builder: (redContext) => RedPage()))
                      .then((value) => debugPrint("Gelen sayi $value"));
                },
                child: const Text("Kirmizi sayfaya kec andoid")),
          ],
        ),
      ),
    );
  }
}
