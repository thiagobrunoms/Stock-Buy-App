import 'package:flutter/material.dart';
import 'package:stock_and_buy_app/presentation/widgets/collections_appbar.dart';

class CollectionSide extends StatelessWidget {
  const CollectionSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CollectionsAppBar()
      ],
    );
  }
}