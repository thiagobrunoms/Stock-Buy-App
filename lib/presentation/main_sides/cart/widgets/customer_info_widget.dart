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
          const Text('Customer', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 17.0)),
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