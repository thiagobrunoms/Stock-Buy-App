import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stock_and_buy_app/core/theme.dart';
import 'package:stock_and_buy_app/presentation/stock_buy_checkout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: colorCustom,
        primarySwatch: colorCustom,
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 20),
          headlineMedium: TextStyle(color: colorCustom, fontSize: 17),
          headlineSmall: TextStyle(color: colorCustom, fontSize: 15),
          titleLarge: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 15),
          titleMedium: TextStyle(color: Colors.grey[400], fontSize: 16),
          titleSmall: TextStyle(color: Colors.grey[400], fontSize: 14),
          labelLarge: TextStyle(color: Colors.grey[400], fontSize: 14),
          bodyLarge: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 18),
          

        )
      ),
      home: const StockBuyCheckout(),
    );
  }
}