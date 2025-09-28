import 'package:flutter/material.dart';

class DashboardSiswa extends StatelessWidget {
  const DashboardSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard Siswa")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/daftarArsipSiswa'),
            child: const Text("Lihat Arsip"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
            child: const Text("Logout"),
          ),
        ],
      ),
    );
  }
}
