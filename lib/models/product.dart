import 'package:carte/models/comment.dart';

class Product {
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
  });

  List<String> subImagesPath, category;
  int sales, price;
  String productName, imagePath, description;
  double ratings;
  List<Comment> comments;
}
