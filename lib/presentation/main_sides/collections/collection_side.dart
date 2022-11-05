import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/dtos/product.dart';
import 'package:stock_and_buy_app/presentation/main_sides/collections/widgets/collections_appbar.dart';
import 'package:stock_and_buy_app/presentation/main_sides/collections/widgets/product_item_widget.dart';
import 'package:stock_and_buy_app/presentation/main_sides/collections/widgets/product_list/product_list_widget.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';

class CollectionSide extends StatelessWidget {
  const CollectionSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CollectionsAppBar(),
        DefaultContainer(
          child: Center(
            child: Text('Quick sale', 
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        ),
        const Expanded(child: ProductListWidget()),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Center(child: Text('Page 1 of 3', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))),
        )
      ],
    );
  }
}