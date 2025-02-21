import 'dart:math';

import 'package:carte/components/product_card.dart';
import 'package:carte/data/products.dart';
import 'package:carte/models/product.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatefulWidget {
  ProductListView({
    super.key,
    required this.activeCategory,
  }) {
    for (Product product in products) {
      if (product.category.contains(activeCategory)) {
        categoryProducts.add(product);
      }
    }
  }

  late List<Product> categoryProducts = [];
  String activeCategory;

  @override
  _ProductListViewState createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.categoryProducts.length,
        itemBuilder: (context, index) => ProductCard(
          product: widget.categoryProducts[index],
        ),
      ),
    );
  }
}
