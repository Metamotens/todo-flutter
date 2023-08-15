import 'package:flutter/material.dart';

class DeleteDialog extends StatelessWidget {
  final Function onRemove;
  const DeleteDialog({super.key, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Confirmar'),
      content:
          const Text('¿Estas seguro de que quiere eliminar este elemento?'),
      actions: <Widget>[
        TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancelar')),
        TextButton(
            onPressed: () => {
                  onRemove(),
                  Navigator.pop(context, 'Confirmar'),
                },
            child: const Text('Confirmar')),
      ],
    );
  }
}
