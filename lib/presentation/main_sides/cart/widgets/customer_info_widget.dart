import 'package:flutter/material.dart';

class CustomerInfoWidget extends StatelessWidget {
  const CustomerInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(left: 15, top: 20, bottom: 20, right: 15),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Customer', style: Theme.of(context).textTheme.titleMedium),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Kate Bell', style: Theme.of(context).textTheme.headlineSmall),
                Text('kate.bell@googlemail.com', style: Theme.of(context).textTheme.headlineSmall),
              ],
            ),
          )
        ],
      )
    );
  }
}