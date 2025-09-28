import 'package:flutter/material.dart';

// Import semua screen
import 'screens/auth/login_page.dart';
import 'screens/guru/dashboard_guru.dart';
import 'screens/guru/upload_arsip.dart';
import 'screens/guru/daftar_arsip_guru.dart';
import 'screens/siswa/dashboard_siswa.dart';
import 'screens/siswa/daftar_arsip_siswa.dart';
import 'screens/admin/dashboard_admin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Arsip Sekolah',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),

        // Guru
        '/dashboardGuru': (context) => const DashboardGuru(),
        '/uploadArsip': (context) => const UploadArsipPage(),
        '/daftarArsipGuru': (context) => const DaftarArsipGuruPage(),

        // Siswa
        '/dashboardSiswa': (context) => const DashboardSiswa(),
        '/daftarArsipSiswa': (context) => const DaftarArsipSiswaPage(),

        // Admin
        '/dashboardAdmin': (context) => const DashboardAdmin(),
      },
    );
  }
}
