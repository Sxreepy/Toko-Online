import 'package:flutter/material.dart';
import 'home_page.dart';
import 'product_list_page.dart';
import 'product_detail_page.dart';
import 'cart_page.dart';
import 'checkout_page.dart';
import 'profile_page.dart';
import 'order_history_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toko HP',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: HomePage(),
      routes: {
        '/products': (context) => ProductListPage(),
        '/product-detail': (context) => ProductDetailPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        '/profile': (context) => ProfilePage(),
        '/history': (context) => HistoryPage(),
      },
    );
  }
}
