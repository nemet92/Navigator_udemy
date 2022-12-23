import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_udeny/green_page.dart';
import 'package:navigation_udeny/orange_page.dart';
import 'package:navigation_udeny/red_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
        'redPage': ((context) => RedPage()),
        '/orangePage': (context) => const OrangePage()
      },
      //bu hisse olmayan sehife olduqda kecid edilecek
      onUnknownRoute: ((settings) => MaterialPageRoute(
          builder: ((context) => Scaffold(
                appBar: AppBar(
                  title: const Text("Error"),
                ),
                body: const Center(child: Text("Error 404")),
              )))),
      debugShowCheckedModeBanner: false,
      title: 'Navigator lesson',
      // home: const HomePage()
    );
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
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.of(context).maybePop();
                },
                child: const Text("Maybe pop kullanimi")),
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
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const GreenPage()));
                },
                child: const Text("Push Replacment")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.pushNamed(context, 'redPage');
                },
                child: const Text("PushNamed kullanimi")),
          ],
        ),
      ),
    );
  }
}
