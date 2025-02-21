class Product {
  Product({
    required this.imagePath,
    required this.price,
    required this.productName,
    required this.ratings,
    required this.sales,
    required this.subImagesPath,
    required this.category,
  });

  List<String> subImagesPath, category;
  int sales, price;
  String productName, imagePath;
  double ratings;
}
