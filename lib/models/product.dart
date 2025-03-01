import 'package:carte/models/comment.dart';
import 'package:hive_ce/hive.dart';
import 'package:uuid/v4.dart';

class Product extends HiveObject {
  Product({
    required this.imagePath,
    required this.price,
    required this.productName,
    required this.ratings,
    required this.sales,
    required this.subImagesPath,
    required this.category,
    required this.description,
    required this.comments,
  }) {
    productId = UuidV4();
  }

  late UuidV4 productId;
  List<String> subImagesPath, category;
  int sales, price;
  String productName, imagePath, description;
  double ratings;
  List<Comment> comments;
}
