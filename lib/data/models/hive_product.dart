import 'package:carte/domain/models/product.dart';
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
}
