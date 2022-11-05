import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/dtos/product.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';

class ProductItemWidget extends StatefulWidget {
  final Product product;
  final bool isSelected;
  const ProductItemWidget({super.key, required this.product, this.isSelected = false});

  @override
  State<ProductItemWidget> createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(widget.product.imageUrl, height: 80, width: 80,),
          Text(widget.product.name, style: const TextStyle(fontWeight: FontWeight.bold),),
          Text('${widget.product.quantityInStock} in stock', style: const TextStyle(color: Colors.grey),),
        ],
      ),
    );
  }
}