import 'package:carte/features/product/domain/models/product.dart';
import 'package:hive_ce/hive.dart';

class HiveProduct extends Product with HiveObjectMixin {
  HiveProduct({
    required super.imagePath,
    required super.price,
    required super.productName,
    required super.ratings,
    required super.sales,
    required super.subImagesPath,
    required super.category,
    required super.description,
    required super.comments,
  });

  static HiveProduct toHiveObject(Product product) {
    return HiveProduct(
      imagePath: product.imagePath,
      price: product.price,
      productName: product.productName,
      ratings: product.ratings,
      sales: product.sales,
      subImagesPath: product.subImagesPath,
      category: product.category,
      description: product.description,
      comments: product.comments,
    );
  }
}
