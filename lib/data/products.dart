import 'package:carte/models/product.dart';

Map<String, List<Product>> categoryProducts = {
  'Popular': [
    Product(
      imagePath: 'lib/images/nintendo-pro.png',
      price: 310,
      productName: 'Nintendo Pro',
      ratings: 4.5,
      sales: 1200,
      subImagesPath: [
        'lib/images/nintendo-pro(sub1).png',
        'lib/images/nintendo-pro(sub2).png',
        'lib/images/nintendo-pro(sub3).png',
      ],
    ),
    Product(
      imagePath: 'lib/images/deaf-cods.png',
      price: 120,
      productName: 'Deaf Cods',
      ratings: 4.5,
      sales: 2400,
      subImagesPath: [],
    ),
  ],
  'Earphones': [
    Product(
      imagePath: 'lib/images/deaf-cods.png',
      price: 120,
      productName: 'Deaf Cods',
      ratings: 4.5,
      sales: 2400,
      subImagesPath: [],
    ),
  ],
  'Charger': [],
  'Protection': [],
  'Camera': [],
};
