import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/cart_appbar.dart';

class CartSide extends StatelessWidget {
  const CartSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CartAppBar(),
      ],
    );
  }
}