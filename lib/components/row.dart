import 'package:flutter/material.dart';
import 'package:shopping_cart/components/delete_dialog.dart';
import 'package:shopping_cart/entities/cart.dart';

class CartRow extends StatefulWidget {
  final Cart cart;
  final Function onRemove;

  const CartRow({super.key, required this.cart, required this.onRemove});

  @override
  State<CartRow> createState() => CartRowState();
}

class CartRowState extends State<CartRow> {
  bool? isChecked = false;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 75,
          color: Colors.white,
          child: CheckboxListTile(
            value: isChecked,
            onChanged: (bool? checked) {
              setState(() => isChecked = checked);
            },
            title: Text(widget.cart.name),
            subtitle: const Text('Subtitulo'),
            activeColor: Colors.blue[900],
            controlAffinity: ListTileControlAffinity.leading,
            secondary: IconButton(
              icon: const Icon(Icons.close),
              color: Colors.red[400],
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) =>
                      DeleteDialog(onRemove: widget.onRemove)),
            ),
          )),
    );
  }
}
