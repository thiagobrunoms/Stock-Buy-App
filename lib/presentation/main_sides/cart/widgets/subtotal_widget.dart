import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';

class SubtotalWidget extends StatefulWidget {
  const SubtotalWidget({super.key});

  @override
  State<SubtotalWidget> createState() => _SubtotalWidgetState();
}

class _SubtotalWidgetState extends State<SubtotalWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Subtotal', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          Text('\$${345.toStringAsFixed(2)}', style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
        ],
      )
    );
  }
}