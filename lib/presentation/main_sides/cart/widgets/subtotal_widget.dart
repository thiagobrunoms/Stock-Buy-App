import 'package:flutter/material.dart';

class SubtotalWidget extends StatefulWidget {
  const SubtotalWidget({super.key});

  @override
  State<SubtotalWidget> createState() => _SubtotalWidgetState();
}

class _SubtotalWidgetState extends State<SubtotalWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Subtotal', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 17)),
          Text('\$${345.toStringAsFixed(2)}', style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 17)),
        ],
      )
    );
  }
}