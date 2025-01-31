import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Checkout'), backgroundColor: Colors.yellow[700]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total Belanja: Rp 0', style: TextStyle(color: Colors.white)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/history'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[700]),
              child: Text('Bayar Sekarang', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
