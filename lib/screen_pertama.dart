import 'package:flutter/material.dart';

class ScreenPertama extends StatelessWidget {
  const ScreenPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Farm House Lembang"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row dengan 3 column (icon + text)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                // Column 1
                Column(
                  children: [
                    Icon(Icons.calendar_today, size: 30),
                    SizedBox(height: 8),
                    Text("Open Everyday"),
                  ],
                ),
                // Column 2
                Column(
                  children: [
                    Icon(Icons.access_time, size: 30),
                    SizedBox(height: 8),
                    Text("09:00 - 20:00"),
                  ],
                ),
                // Column 3
                Column(
                  children: [
                    Icon(Icons.attach_money, size: 30),
                    SizedBox(height: 8),
                    Text("Rp 25.000"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Deskripsi
            const Text(
              "Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata "
              "yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, "
              "kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu "
              "diterapkan dalam bentuk spot swafoto Instagramable.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
