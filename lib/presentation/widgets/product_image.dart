import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;

  const ProductImage({super.key, required this.url, this.width = 80.0, this.height = 80.0});

  @override
  Widget build(BuildContext context) {
    return Image.asset(url, width: width, height: height);
  }
}