import 'package:carte/domain/models/product.dart';
import 'package:carte/domain/repository/product_repository.dart';

class HiveProductRepository implements ProductRepository {
  @override
  Future<void> addProduct(Product newProduct) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }

  @override
  Future<void> deleteProduct(Product product) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  Future<void> updateProduct(Product product) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
