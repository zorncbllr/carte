import 'dart:math';

import 'package:carte/components/product_card.dart';
import 'package:carte/data/products.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatefulWidget {
  ProductListView({
    super.key,
    required this.activeCategory,
  });

  String activeCategory;

  @override
  _ProductListViewState createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: categoryProducts[widget.activeCategory]!.length,
        itemBuilder: (context, index) => ProductCard(
          product: categoryProducts[widget.activeCategory]![index],
        ),
      ),
    );
  }
}
