import 'dart:math';

import 'package:carte/components/product_card.dart';
import 'package:carte/models/product.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatefulWidget {
  const BestSeller({Key? key}) : super(key: key);

  @override
  _BestSellerState createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  List<Product> products = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ProductCard(
          product: products[index],
        ),
      ),
    );
  }
}
