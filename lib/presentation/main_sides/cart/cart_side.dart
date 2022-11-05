import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/cart_appbar.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/cart_list_widget.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/customer_info_widget.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/discount_widget.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/subtotal_widget.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';
import 'package:stock_and_buy_app/presentation/widgets/items_divider.dart';

class CartSide extends StatelessWidget {
  const CartSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CartAppBar(),
        const Expanded(
          child: CardListWidget(),
        ),
        const CustomerInfoWidget(),
        DefaultContainer(
          child: Column(
            children: [
              const DiscountWidget(),
              const ItemDivider(),
              const SubtotalWidget(),
              const ItemDivider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {}, 
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text('5', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            ),
                            VerticalDivider(
                              width: 20,
                              thickness: 1,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const Expanded(child: Text('Charge \$${389.85}'))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}