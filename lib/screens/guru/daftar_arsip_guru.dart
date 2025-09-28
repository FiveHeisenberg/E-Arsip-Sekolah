import 'package:flutter/material.dart';

class DaftarArsipGuruPage extends StatelessWidget {
  const DaftarArsipGuruPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> arsip = [
      {"judul": "RPP Matematika", "tanggal": "2025-09-22"},
      {"judul": "Silabus IPA", "tanggal": "2025-09-20"},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Arsip Guru")),
      body: ListView.builder(
        itemCount: arsip.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(arsip[index]["judul"]!),
            subtitle: Text("Tanggal: ${arsip[index]["tanggal"]}"),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
