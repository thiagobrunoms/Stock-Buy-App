import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  final Widget child;
  const DefaultContainer({super.key, required this.child});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(3),
      color: Colors.white,
      child: child,
    );
  }
}