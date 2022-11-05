import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/widgets/cart_appbar.dart';
import 'package:stock_and_buy_app/presentation/widgets/collections_appbar.dart';
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
        );
      }
    );
  }
  
  Widget _buildCollections() {
    return Column(
      children: const [
        CollectionsAppBar()
      ],
    );
  }
  
  Widget _buildCart() {
    return Column(
      children: const [
        CartAppBar(),
      ],
    );
  }
}