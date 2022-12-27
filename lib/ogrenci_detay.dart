import 'package:flutter/material.dart';
import 'package:navigation_udeny/ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrencisi;
  const OgrenciDetay({super.key, required this.secilenOgrencisi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ogrenci Detay"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(secilenOgrencisi.id.toString()),
          Text(secilenOgrencisi.isim),
          Text(secilenOgrencisi.soyisim)
        ],
      ),
    );
  }
}
