import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Daftar riwayat pembelian
    final List<Map<String, dynamic>> purchaseHistory = [
      {
        'date': '2025-01-10',
        'total': 5000000,
        'items': [
          {'name': 'Samsung Galaxy S21', 'quantity': 1, 'price': 1500000},
          {'name': 'iPhone 12', 'quantity': 2, 'price': 2000000},
        ],
      },
      {
        'date': '2025-01-15',
        'total': 10000000,
        'items': [
          {'name': 'Xiaomi Mi 11', 'quantity': 1, 'price': 7500000},
          {'name': 'Realme Narzo 30', 'quantity': 3, 'price': 500000},
        ],
      },
      {
        'date': '2025-01-20',
        'total': 3200000,
        'items': [
          {'name': 'OPPO A53', 'quantity': 1, 'price': 3200000},
        ],
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Riwayat Pembelian'),
        backgroundColor: Colors.yellow[700],
      ),
      body: purchaseHistory.isEmpty
          ? Center(child: Text('Belum ada riwayat pembelian', style: TextStyle(color: Colors.white)))
          : ListView.builder(
              itemCount: purchaseHistory.length,
              itemBuilder: (context, index) {
                final history = purchaseHistory[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  color: Colors.white10,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tanggal: ${history['date']}',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Total Pembelian: Rp ${history['total']}',
                          style: TextStyle(color: Colors.yellow[700], fontSize: 14),
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: history['items'].map<Widget>((item) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${item['name']} (x${item['quantity']})',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'Rp ${item['price'] * item['quantity']}',
                                    style: TextStyle(color: Colors.yellow[700]),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        Divider(color: Colors.white),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
