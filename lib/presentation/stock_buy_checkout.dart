import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/cart_side.dart';
import 'package:stock_and_buy_app/presentation/main_sides/collections/collection_side.dart';

class StockBuyCheckout extends StatefulWidget {
  const StockBuyCheckout({super.key});

  @override
  State<StockBuyCheckout> createState() => _StockBuyCheckoutState();
}

class _StockBuyCheckoutState extends State<StockBuyCheckout> {
  int bottomAppBarIndex = 0;

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
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottomAppBarIndex,
            items: [
              _buildBottonBarItem(Icons.car_crash, 'Checkout', 0),
              _buildBottonBarItem(Icons.shop, 'Orders', 1),
              _buildBottonBarItem(Icons.store, 'Store', 2),
            ],
            onTap: (index) {
              setState(() {
                bottomAppBarIndex = index;
              });
            },
          ),
        );
      }
    );
  }

  BottomNavigationBarItem _buildBottonBarItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          const SizedBox(width: 10,),
          Text(label, style: TextStyle(color: index == bottomAppBarIndex ? Theme.of(context).primaryColor : null),)
        ],
      ),
      label: ''
    );
  }
}