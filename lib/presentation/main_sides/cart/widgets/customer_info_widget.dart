import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';

class CustomerInfoWidget extends StatelessWidget {
  const CustomerInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Customer', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Kate Bell', style: TextStyle(color: Theme.of(context).primaryColor),),
              Text('kate.bell@googlemail.com', style: TextStyle(color: Theme.of(context).primaryColor),)
            ],
          )
        ],
      )
    );
  }
}