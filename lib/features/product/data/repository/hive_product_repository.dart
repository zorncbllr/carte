import 'package:carte/features/product/data/models/hive_product.dart';
import 'package:carte/features/product/domain/models/product.dart';
import 'package:carte/features/product/domain/repository/product_repository.dart';
import 'package:hive_ce_flutter/adapters.dart';

class HiveProductRepository implements ProductRepository {
  final Box<HiveProduct> _productBox = Hive.box<HiveProduct>('productBox');

  @override
  Future<void> addProduct(Product newProduct) async {
    HiveProduct product = HiveProduct.toHiveObject(newProduct);

    await _productBox.put(product.productId, product);
  }

  @override
  Future<void> deleteProduct(Product product) async {
    await _productBox.delete(product.productId);
  }

  @override
  Future<List<Product>> getProducts() async {
    return _productBox.values.toList();
  }

  @override
  Future<void> updateProduct(Product product) async {
    HiveProduct updatedProduct = HiveProduct.toHiveObject(product);

    await _productBox.put(updatedProduct.productId, updatedProduct);
  }
}
