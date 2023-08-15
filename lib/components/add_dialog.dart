import 'package:flutter/material.dart';
import 'package:shopping_cart/entities/cart.dart';

class AddDialog extends StatefulWidget {
  final Function addItem;

  const AddDialog({super.key, required this.addItem});

  @override
  State<AddDialog> createState() => AddDialogState();
}

class AddDialogState extends State<AddDialog> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Añadir item'),
      content: SizedBox(
        width: 250,
        child: TextField(
          controller: myController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.pop(context, 'Cancel'),
        ),
        TextButton(
          child: const Text('Accept'),
          onPressed: () => {
            widget.addItem(Cart(myController.text, false)),
            Navigator.pop(context, 'Accept'),
          },
        )
      ],
    );
  }
}
