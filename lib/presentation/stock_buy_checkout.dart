import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class StockBuyCheckout extends StatefulWidget {
  const StockBuyCheckout({super.key});

  @override
  State<StockBuyCheckout> createState() => _StockBuyCheckoutState();
}

class _StockBuyCheckoutState extends State<StockBuyCheckout> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        print('Rebuilding... ${orientation.index}');
        print('Rebuilding... ${orientation.name}');

        return Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              return Center(
                child: Text('Center ${constraints.maxWidth}'),
              );
            }
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
        );
      }
    );
  }
}