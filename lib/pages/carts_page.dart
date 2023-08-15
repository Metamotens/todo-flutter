import 'package:flutter/material.dart';
import 'package:shopping_cart/components/add_dialog.dart';
import 'package:shopping_cart/components/bottom_bar.dart';
import 'package:shopping_cart/components/row.dart';
import 'package:shopping_cart/entities/cart.dart';

class CartsPage extends StatefulWidget {
  const CartsPage({super.key});

  @override
  State<CartsPage> createState() => CartPageState();
}

class CartPageState extends State<CartsPage> {
  final List<Cart> carts = [];

  void addCartItem(Cart cart) {
    setState(() {
      carts.add(cart);
    });
  }

  void removeCartItem(int index) {
    setState(() {
      carts.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO List'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue[200],
      body: SafeArea(
          child: ListView.builder(
        itemCount: carts.length,
        itemBuilder: (context, index) {
          return CartRow(
              cart: carts[index], onRemove: () => removeCartItem(index));
        },
      )),
      bottomNavigationBar: const BottomBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) => AddDialog(
                  addItem: addCartItem,
                )),
        child: Icon(Icons.add, color: Colors.blueGrey[900]),
      ),
    );
  }
}
