import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Latar belakang hitam
      appBar: AppBar(
        title: Text('Toko HP'),
        backgroundColor: Colors.yellow[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildMenuButton(context, 'Lihat Produk', '/products'),
            _buildMenuButton(context, 'Keranjang Belanja', '/cart'),
            _buildMenuButton(context, 'Profil Saya', '/profile'),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String text, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, route),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow[700],
          minimumSize: Size(200, 50),
        ),
        child: Text(text, style: TextStyle(color: Colors.black, fontSize: 18)),
      ),
    );
  }
}
