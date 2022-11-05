import 'package:stock_and_buy_app/domain/i_product_repository.dart';
import 'package:stock_and_buy_app/presentation/dtos/product.dart';
import 'dart:math' as math;

class ProductListWidgetController {
  ProductRepository repository;

  ProductListWidgetController(this.repository);

  Future<List<Product>> loadProducts() async {
    math.Random r = math.Random();
    List<Product> products = [];

    for (int i = 0; i < 20; i++) {
      int randomProductIndex = r.nextInt(5);
      products.add(await repository.getProductById(randomProductIndex));
    }
    
    return products;
  }

}