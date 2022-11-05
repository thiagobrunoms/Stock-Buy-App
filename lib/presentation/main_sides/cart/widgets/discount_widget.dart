import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Add discount', style: TextStyle(color: Theme.of(context).primaryColor)),
          Icon(Icons.add_circle_outline, color: Theme.of(context).primaryColor,)
        ],
      )
    );
  }
}