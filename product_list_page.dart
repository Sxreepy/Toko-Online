import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> products = const [
    {'name': 'iPhone 15', 'price': 15000000},
    {'name': 'Samsung Galaxy S23', 'price': 13000000},
    {'name': 'Xiaomi 13', 'price': 9000000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Daftar Produk'),
        backgroundColor: Colors.yellow[700],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigasi ke halaman detail dengan argument produk yang dipilih
              Navigator.pushNamed(
                context,
                '/product-detail',
                arguments: products[index],
              );
            },
            child: Card(
              color: Colors.grey[900],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Menghapus gambar produk
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      products[index]['name'],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Rp ${products[index]['price']}',
                    style: TextStyle(fontSize: 14, color: Colors.yellow[700]),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
