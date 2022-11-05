import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/dtos/product.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';
import 'package:stock_and_buy_app/presentation/widgets/product_image.dart';

class CartItemWidget extends StatelessWidget {
  final Product product;

  const CartItemWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 20,),
          Expanded(child: Row(
            children: [
              ProductImage(url: product.imageUrl, width: 60, height: 60),
              Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          )),
          Text('\$${product.formatPrice}', style: const TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}