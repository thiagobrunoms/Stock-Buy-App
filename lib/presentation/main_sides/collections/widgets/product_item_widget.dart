import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/dtos/product.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';
import 'package:stock_and_buy_app/presentation/widgets/product_image.dart';

class ProductItemWidget extends StatefulWidget {
  final Product product;
  final bool isSelected;
  const ProductItemWidget({super.key, required this.product, this.isSelected = false});

  @override
  State<ProductItemWidget> createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  late bool isSelected;
  @override
  void initState() {
    super.initState();

    isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10), 
            width: 200,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductImage(url: widget.product.imageUrl),
                Text(widget.product.name, style: const TextStyle(fontWeight: FontWeight.bold),),
                Text('${widget.product.quantityInStock} in stock', style: const TextStyle(color: Colors.grey),),
              ],
            ),
          ),
        ),
        if (isSelected)
          const Positioned(
            top: 20,
            right: 10,
            child: Icon(Icons.check_circle_outline, color: Color.fromARGB(255, 184, 220, 216)),
          )
      ],
    );
  }
  
}