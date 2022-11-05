import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/cart_appbar.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/cart_list_widget.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/customer_info_widget.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/discount_widget.dart';
import 'package:stock_and_buy_app/presentation/main_sides/cart/widgets/subtotal_widget.dart';

class CartSide extends StatelessWidget {
  const CartSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CartAppBar(),
        Expanded(
          child: CardListWidget(),
        ),
        CustomerInfoWidget(),
        DiscountWidget(),
        SubtotalWidget(),
      ],
    );
  }
}