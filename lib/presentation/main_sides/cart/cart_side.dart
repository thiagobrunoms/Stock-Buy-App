import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/dtos/product.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/cart_appbar.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/cart_item_widget.dart';

class CartSide extends StatelessWidget {
  const CartSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const CartAppBar(),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return CartItemWidget(
                product: Product(name: 'Perfume', imageUrl: 'assets/images/perfume.png', price: 9990, quantityInStock: 10)
              );
            }),
        ),
      ],
    );
  }
}