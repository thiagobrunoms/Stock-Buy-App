import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/main_sides/collections/widgets/collections_appbar.dart';
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
        // Expanded(child: GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder))
      ],
    );
  }
}