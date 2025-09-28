import 'package:flutter/material.dart';

class UploadArsipPage extends StatelessWidget {
  const UploadArsipPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _judulController = TextEditingController();
    final TextEditingController _deskripsiController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Upload Arsip")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: _judulController, decoration: const InputDecoration(labelText: "Judul Arsip")),
            const SizedBox(height: 10),
            TextField(controller: _deskripsiController, decoration: const InputDecoration(labelText: "Deskripsi")),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Pilih File"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Arsip berhasil diupload")));
                Navigator.pop(context);
              },
              child: const Text("Simpan Arsip"),
            ),
          ],
        ),
      ),
    );
  }
}
