import 'package:stock_and_buy_app/domain/i_product_repository.dart';
import 'package:stock_and_buy_app/presentation/dtos/product.dart';


//I can also consider an additional datasource layer (which I could have multiple datasources - e.g.: remote and local).
//However, for the sake of simplicity, in this assessment, I considered only the repository layer
class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<Product> getProductById(int id) async {
    switch (id) {
        case 0:
          return _generatePerfumeProduct();
        case 1:
          return _generateMapleMonitor();
        case 2:
          return _generateMapleMousePad();
        case 3:
          return _generateMaplePlanter();
        default:
          return _generateMapleKeyboard();
      }
  }

  Product _generatePerfumeProduct() {
    return Product(name: 'Perfume', imageUrl: 'assets/images/perfume.png', quantityInStock: 10, price: 990);
  }

  Product _generateMapleMonitor() {
    return Product(name: 'Maple Monitor', imageUrl: 'assets/images/maple_monitor.png', quantityInStock: 43, price: 244);
  }

  Product _generateMapleMousePad() {
    return Product(name: 'Maple Mouse Pad', imageUrl: 'assets/images/maple_mousepad.png', quantityInStock: 24, price: 917);
  }

  Product _generateMaplePlanter() {
    return Product(name: 'Maple Planter', imageUrl: 'assets/images/maple_planter.png', quantityInStock: 24, price: 783);
  }

  Product _generateMapleKeyboard() {
    return Product(name: 'Maple Keyboard', imageUrl: 'assets/images/mapple_keyboard.png', quantityInStock: 24, price: 983);
  }
  
}
