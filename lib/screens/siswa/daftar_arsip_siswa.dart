import 'package:flutter/material.dart';

class DaftarArsipSiswaPage extends StatelessWidget {
  const DaftarArsipSiswaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> arsip = [
      {"judul": "RPP Matematika", "file": "rpp_matematika.pdf"},
      {"judul": "Silabus IPA", "file": "silabus_ipa.pdf"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Arsip Siswa")),
      body: ListView.builder(
        itemCount: arsip.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(arsip[index]["judul"]!),
            subtitle: Text("File: ${arsip[index]["file"]}"),
            trailing: IconButton(
              icon: const Icon(Icons.download, color: Colors.blue),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Mengunduh ${arsip[index]['file']}")));
              },
            ),
          );
        },
      ),
    );
  }
}
