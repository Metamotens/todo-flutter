import 'package:flutter/material.dart';
import 'package:shopping_cart/pages/carts_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shopping Cart App',
        home: CartsPage());
  }
}
