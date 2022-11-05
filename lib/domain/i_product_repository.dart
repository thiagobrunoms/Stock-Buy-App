import 'package:stock_and_buy_app/presentation/dtos/product.dart';

abstract class ProductRepository {
  Future<Product> getProductById(int id);
}