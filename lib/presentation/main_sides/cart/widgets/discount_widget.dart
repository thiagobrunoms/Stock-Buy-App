import 'package:flutter/material.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Add discount', style: Theme.of(context).textTheme.headlineMedium),
          Icon(Icons.add_circle_outline, color: Theme.of(context).primaryColor)
        ],
      )
    );
  }
}