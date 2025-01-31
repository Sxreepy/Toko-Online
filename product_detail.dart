import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    if (product == null) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Detail Produk'), backgroundColor: Colors.yellow[700]),
        body: Center(child: Text('Produk tidak ditemukan', style: TextStyle(color: Colors.white))),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text(product['name']), backgroundColor: Colors.yellow[700]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product['name'], style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            Text('Rp ${product['price']}', style: TextStyle(fontSize: 20, color: Colors.yellow[700])),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/cart'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[700]),
              child: Text('Tambah ke Keranjang', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
