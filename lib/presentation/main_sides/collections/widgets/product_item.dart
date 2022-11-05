import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/dtos/product.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';

class ProductItem extends StatefulWidget {
  final Product product;
  final bool isSelected;
  const ProductItem({super.key, required this.product, this.isSelected = false});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Column(
        children: [
          Image.asset('assets/images/perfume.png', height: 10, width: 10,),
          Text(widget.product.name, style: const TextStyle(fontWeight: FontWeight.bold),),
          Text('${widget.product.quantityInStock} in stock', style: const TextStyle(color: Colors.grey),),
        ],
      ),
    );
  }
}