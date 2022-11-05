import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';

class CollectionsAppBar extends StatelessWidget {
  const CollectionsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 1,),
          const Text('All Collections'),
          Icon(Icons.search, color: Theme.of(context).primaryColor)
        ],
      ),
    );
  }
}