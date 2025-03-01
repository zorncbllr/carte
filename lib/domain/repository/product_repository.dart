import 'package:carte/domain/models/product.dart';

abstract class ProductRepository {
  Future<void> addProduct(Product newProduct);

  Future<void> updateProduct(Product product);

  Future<void> deleteProduct(Product product);

  Future<List<Product>> getProducts();
}
