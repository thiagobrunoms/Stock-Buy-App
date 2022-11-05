import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/domain/product_repository.dart';
import 'package:stock_and_buy_app/presentation/dtos/product.dart';
import 'package:stock_and_buy_app/presentation/main_sides/collections/widgets/product_item_widget.dart';
import 'package:stock_and_buy_app/presentation/main_sides/collections/widgets/product_list/product_list_widget_controller.dart';
import 'dart:math' as math;

class ProductListWidget extends StatefulWidget {
  const ProductListWidget({super.key});

  @override
  State<ProductListWidget> createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  ProductRepositoryImpl productRepositoryImpl = ProductRepositoryImpl();
  late ProductListWidgetController controller;

  @override
  void initState() {
    super.initState();

    controller = ProductListWidgetController(productRepositoryImpl);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: controller.loadProducts(),
      builder: (context, snapshot) {
        if (!snapshot.hasData || snapshot.data == null) {
          return const CircularProgressIndicator();
        }

        return GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
          ), 
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            return ProductItemWidget(
              product: snapshot.data![index],
              isSelected: math.Random().nextBool(),
            );
          }
        );
      }
    );
  }
}