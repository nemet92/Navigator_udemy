import 'package:flutter/material.dart';

class Ogrencilistesi extends StatelessWidget {
  const Ogrencilistesi({super.key});

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
              leading: CircleAvatar(
                child: Text(tumOgrenciler[index].isim),
              ),
              subtitle: Text(tumOgrenciler[index].Soyisim),
            );
          }),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String Soyisim;

  Ogrenci(this.id, this.isim, this.Soyisim);
}
