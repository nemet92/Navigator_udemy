import 'package:flutter/material.dart';

class Ogrencilistesi extends StatefulWidget {
  const Ogrencilistesi({super.key});

  @override
  State<Ogrencilistesi> createState() => _OgrencilistesiState();
}

class _OgrencilistesiState extends State<Ogrencilistesi> {
  @override
  Widget build(BuildContext context) {
    int elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    List<Ogrenci> tumOgrenciler = List.generate(
        elemanSayisi,
        (index) =>
            Ogrenci(index + 1, 'Isim: ${index + 1}', 'Soyisim ${index + 1}'));
    return Scaffold(
      appBar: AppBar(title: const Text("Ogrenci listesti")),
      body: ListView.builder(
          itemCount: elemanSayisi,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (() {
                var secilen = tumOgrenciler[index];
                Navigator.pushNamed(context, "/ogrenciDetay",
                    arguments: secilen);
              }),
              leading: CircleAvatar(
                radius: 24,
                child: Center(
                  child: Text(
                    tumOgrenciler[index].isim,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
              title: Text(tumOgrenciler[index].soyisim),
            );
          }),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
