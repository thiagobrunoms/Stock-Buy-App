import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/dtos/product.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/cart_appbar.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/cart_item_widget.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';

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
        DefaultContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Customer', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Kate Bell', style: TextStyle(color: Theme.of(context).primaryColor),),
                  Text('kate.bell@googlemail.com', style: TextStyle(color: Theme.of(context).primaryColor),)
                ],
              )
            ],
          )
        ),
        DefaultContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Add discount', style: TextStyle(color: Theme.of(context).primaryColor)),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outline, color: Theme.of(context).primaryColor,))
            ],
          )
        ),
        DefaultContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Subtotal', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
              Text('\$${345.toStringAsFixed(2)}', style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
            ],
          )
        )
      ],
    );
  }
}