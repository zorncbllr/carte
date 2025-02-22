import 'package:carte/models/comment.dart';
import 'package:carte/models/product.dart';

List<Product> products = [
  Product(
      imagePath: 'lib/images/nintendo-pro.png',
      price: 310,
      productName: 'Nintendo Pro',
      description:
          'A sleek black joystick with neon accents and a comfortable grip for precise gaming control...',
      ratings: 4.5,
      sales: 1200,
      subImagesPath: [
        'lib/images/nintendo(sub1).webp',
        'lib/images/nintendo(sub2).webp',
        'lib/images/nintendo(sub3).webp',
      ],
      category: [
        'Popular'
      ],
      comments: [
        Comment(
          name: 'Criza Elaine',
          comment:
              "The sleek black design of the Nintendo Pro is absolutely stunning! It's the perfect blend of style and performance.",
          profileImagePath: 'lib/images/commentor(3).jpeg',
        ),
        Comment(
          name: 'John Doe',
          comment:
              "Perfect for those who want both performance and aesthetics. The black finish is so clean and chic.",
          profileImagePath: 'lib/images/commentor(1).webp',
        ),
      ]),
  Product(
    imagePath: 'lib/images/deaf-cods.png',
    price: 120,
    productName: 'Deaf Cods',
    description:
        'Stylish and durable, these sleek black deaf cords offer a comfortable, secure fit and deliver clear audio quality. Perfect for everyday use...',
    ratings: 4.5,
    sales: 2400,
    subImagesPath: [],
    category: ['Popular', 'Earphones'],
    comments: [
      Comment(
        name: 'Jimmy Docs',
        comment:
            "The sleek black design of these Deaf Cords is amazing—classy, modern, and they go with anything!",
        profileImagePath: 'lib/images/commentor(2).jpg',
      ),
      Comment(
        name: 'John Doe',
        comment:
            "Great sound quality paired with a super sleek black finish. These Deaf Cords really stand out!",
        profileImagePath: 'lib/images/commentor(1).webp',
      ),
    ],
  ),
];
