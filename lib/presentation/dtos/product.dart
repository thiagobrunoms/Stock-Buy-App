class Product {
  final String name;
  final String imageUrl;
  final int quantityInStock;
  final int price;

  Product({required this.name, required this.imageUrl, required this.quantityInStock, required this.price});

  String get formatPrice => (price / 100).toStringAsFixed(2);

}