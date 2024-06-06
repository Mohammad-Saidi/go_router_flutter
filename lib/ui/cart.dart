import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../cart_holder.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final cartHolder = Provider.of<CartHolder>(context);
    return SafeArea(
      child: ListView.builder(
        itemCount: cartHolder.cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartHolder.cartItems[index]),
          );
        },
      ),
    );
  }
}
