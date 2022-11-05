import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/checkout_button.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/discount_widget.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/subtotal_widget.dart';
import 'package:stock_and_buy_app/presentation/widgets/default_container.dart';
import 'package:stock_and_buy_app/presentation/widgets/items_divider.dart';

class CheckoutArea extends StatelessWidget {
  const CheckoutArea({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Column(
        children: const [
          DiscountWidget(),
          ItemDivider(),
          SubtotalWidget(),
          ItemDivider(),
          CheckoutButton()
        ],
      ),
    );
  }
}