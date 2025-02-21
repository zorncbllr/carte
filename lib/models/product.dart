class Product {
  Product({
    required this.imagePath,
    required this.price,
    required this.productName,
    required this.ratings,
    required this.sales,
  });

  int sales;
  String productName, imagePath;
  double price, ratings;
}
