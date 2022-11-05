import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';

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

        return Scaffold(
          body: SafeArea(
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: _buildCollections()),
                Flexible(
                  flex: 1,
                  child: _buildCart()),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
        );
      }
    );
  }
  
  Widget _buildCollections() {
    return Column(
      children: [
        DefaultContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 1,),
              const Text('All Collections'),
              Icon(Icons.search, color: Theme.of(context).primaryColor)
            ],
          ),
        )
      ],
    );
  }
  
  Widget _buildCart() {
    return Column(
      children: [
        DefaultContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 1,),
              const Text('Cart'),
              Row(
                children: [
                  Icon(Icons.delete, color: Theme.of(context).primaryColor),
                  Icon(Icons.more_horiz, color: Theme.of(context).primaryColor)
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}