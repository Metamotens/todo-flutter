import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _handleTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: 'Carrito'),
        BottomNavigationBarItem(
            icon: Icon(Icons.handyman_sharp), label: 'Varios'),
      ],
      selectedItemColor: Colors.blue[900],
      currentIndex: _selectedIndex,
      onTap: _handleTap,
    );
  }
}
