import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/cart_side.dart';
import 'package:stock_and_buy_app/presentation/main_sides/collections/collection_side.dart';

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
              children: const [
                Flexible(
                  flex: 2,
                  child: CollectionSide()),
                Flexible(
                  flex: 1,
                  child: CartSide()),
              ],
            ),
          ),
        );
      }
    );
  }

}