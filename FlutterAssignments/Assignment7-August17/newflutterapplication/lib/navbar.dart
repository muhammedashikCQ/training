import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined),label: 'About'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout),label: 'MyCart')
          ]);
    
  }
}