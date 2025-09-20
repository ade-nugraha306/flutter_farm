import 'package:flutter/material.dart';

class ScreenPertama extends StatefulWidget {
  const ScreenPertama({super.key});

  @override
  State<ScreenPertama> createState() => _ScreenPertamaState();
}

class _ScreenPertamaState extends State<ScreenPertama> {
  DateTime? selectedDate;

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
            FadeInImage(
              placeholder: const AssetImage("assets/images/loading.gif"),
              image: const AssetImage(
                "assets/images/rural-farm-landscape-stockcake.jpg",
              ),
              fadeInDuration: const Duration(seconds: 1),
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 14),
            // Row dengan 3 column (icon + text)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Column 1
                Column(
                  children: [
                    GestureDetector(
                      onTap: _pickDate,
                      child: Icon(Icons.calendar_today, size: 30),
                    ),
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
            const SizedBox(height: 12),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/images/loading.gif",
                      image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDAXjbNpA2IwhA6Q_uQUuD45V4Riv0VrpUDg&s",
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      fadeInDuration: const Duration(seconds: 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/images/loading.gif",
                      image: "https://cache.lahelu.com/image-PkkKJ4N1A-71421",
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      fadeInDuration: const Duration(seconds: 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/images/loading.gif",
                      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5I3_fH9jrE2tCs--YYfgYbblvp7XyovVUdA&sap-rocky-net-worth.jpg",
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                      fadeInDuration: const Duration(seconds: 1),
                    ),
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
