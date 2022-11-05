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
          const Text('Cart', style: TextStyle(fontWeight: FontWeight.bold),),
          Row(
            children: [
              Icon(Icons.delete, color: Theme.of(context).primaryColor),
              Icon(Icons.more_horiz, color: Theme.of(context).primaryColor)
            ],
          ),
        ],
      ),
    );
  }
}