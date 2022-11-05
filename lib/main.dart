import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/core/theme.dart';
import 'package:stock_and_buy_app/presentation/stock_buy_checkout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: colorCustom,
      ),
      home: const StockBuyCheckout(),
    );
  }
}