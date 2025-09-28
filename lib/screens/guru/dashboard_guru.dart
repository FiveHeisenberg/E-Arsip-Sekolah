import 'package:flutter/material.dart';

class DashboardGuru extends StatefulWidget {
  const DashboardGuru({super.key});

  @override
  State<DashboardGuru> createState() => _DashboardGuruState();
}

class _DashboardGuruState extends State<DashboardGuru> {
  bool _isDark = true;
  bool _showProfileMenu = false;

  @override
  Widget build(BuildContext context) {
    // Tema warna sesuai gambar kedua
    final Color darkBg = const Color(0xFF1A1A1A);
    final Color lightBg = const Color(0xFFF5F5F5);
    final Color cardBgDark = const Color(0xFF2D2D2D);
    final Color cardBgLight = Colors.white;
    final Color accent = const Color(0xFF00BCD4); // Cyan/Teal
    final Color secondaryAccent = const Color(0xFF4DD0E1);

    final Color bgColor = _isDark ? darkBg : lightBg;
    final Color cardBg = _isDark ? cardBgDark : cardBgLight;
    final Color textColor = _isDark ? Colors.white : Colors.black87;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Search bar sesuai mockup
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: cardBg,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cari arsip......",
                    hintStyle: TextStyle(color: textColor.withOpacity(0.6)),
                    prefixIcon: Icon(Icons.search, color: textColor.withOpacity(0.6)),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  style: TextStyle(color: textColor),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                Icon(Icons.notifications_none, color: textColor, size: 26),
                const SizedBox(width: 12),
                IconButton(
                  icon: Icon(
                    _isDark ? Icons.wb_sunny : Icons.nightlight_round,
                    color: accent,
                    size: 26,
                  ),
                  onPressed: () {
                    setState(() => _isDark = !_isDark);
                  },
                ),
              ],
            ),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          
          // ==== Card Daftar Arsip ====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                // ke halaman daftar arsip
              },
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: cardBg,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: _isDark ? Colors.black26 : Colors.grey.withOpacity(0.1),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Daftar Arsip",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                    Text(
                      "300",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: accent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 32),

          // ==== Section Riwayat Upload ====
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Riwayat Upload",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: accent,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // List Arsip - sesuai dengan mockup (kotak abu-abu)
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 80,
                  decoration: BoxDecoration(
                    color: _isDark 
                        ? Colors.grey[700]!.withOpacity(0.6)
                        : Colors.grey[300]!.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Arsip ${index + 1}",
                      style: TextStyle(
                        color: textColor.withOpacity(0.7),
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      // ==== Floating Action Button - Upload (tengah) ====
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [accent, secondaryAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: accent.withOpacity(0.4),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: FloatingActionButton(
          heroTag: "upload",
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.cloud_upload, color: Colors.white, size: 24),
              const Text(
                "Upload",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),

      // ==== Bottom Navigation Bar ====
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 12,
        color: cardBg,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Home
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: accent, size: 28),
                const Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            
            // Spacer untuk FAB
            const SizedBox(width: 80),
            
            // Profile dengan menu
            GestureDetector(
              onTap: () {
                setState(() => _showProfileMenu = !_showProfileMenu);
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // Profile menu dropdown
                  if (_showProfileMenu)
                    Positioned(
                      bottom: 60,
                      right: -20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                        decoration: BoxDecoration(
                          color: cardBg,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.person, color: accent),
                              onPressed: () {},
                              tooltip: "Profile",
                            ),
                            IconButton(
                              icon: const Icon(Icons.settings, color: Colors.grey),
                              onPressed: () {},
                              tooltip: "Settings",
                            ),
                            IconButton(
                              icon: const Icon(Icons.logout, color: Colors.red),
                              onPressed: () {},
                              tooltip: "Logout",
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                  // Profile Avatar
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: accent, width: 2),
                        ),
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/profile.jpg"),
                          backgroundColor: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Icon(
                        _showProfileMenu ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                        color: textColor.withOpacity(0.6),
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}