import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 1,),
          Text('Cart', style: Theme.of(context).textTheme.headlineLarge),
          Row(
            children: [
              Icon(Icons.delete, color: Theme.of(context).primaryColor),
              const SizedBox(width: 10,),
              Icon(Icons.more_horiz, color: Theme.of(context).primaryColor)
            ],
          ),
        ],
      ),
    );
  }
}