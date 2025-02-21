import 'package:carte/models/product.dart';

Map<String, List<Product>> categoryProducts = {
  'Popular': [
    Product(
      imagePath: 'lib/images/nintendo-pro.png',
      price: 310,
      productName: 'Nintendo Pro',
      ratings: 4.5,
      sales: 1200,
    ),
    Product(
      imagePath: 'lib/images/deaf-cods.png',
      price: 120,
      productName: 'Deaf Cods',
      ratings: 4.5,
      sales: 2400,
    ),
  ],
  'Earphones': [
    Product(
      imagePath: 'lib/images/deaf-cods.png',
      price: 120,
      productName: 'Deaf Cods',
      ratings: 4.5,
      sales: 2400,
    ),
  ],
  'Charger': [],
  'Protection': [],
  'Camera': [],
};
