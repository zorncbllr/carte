import 'package:carte/domain/models/comment.dart';
import 'package:uuid/v4.dart';

class Product {
  UuidV4 productId;
  String productName, imagePath, description;

  List<Comment> comments;
  List<String> subImagesPath, category;

  int sales, price;
  double ratings;

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
  }) : productId = UuidV4();
}
