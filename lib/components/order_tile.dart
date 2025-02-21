import 'package:carte/models/product.dart';
import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  OrderTile({
    super.key,
    required this.quantity,
    required this.product,
  });

  Product product;
  int quantity;

  Map<String, TextStyle> productOrderStyle = {
    'OrderData': TextStyle(
      color: Colors.grey.shade300,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    'OrderLabel': TextStyle(
      color: const Color.fromARGB(255, 128, 128, 128),
      fontSize: 12,
    )
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Row(
        spacing: 14,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Image.asset(
              product.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.productName,
                      style: productOrderStyle['OrderData'],
                    ),
                    Text(
                      product.category[0],
                      style: productOrderStyle['OrderLabel'],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      quantity.toString(),
                      style: productOrderStyle['OrderData'],
                    ),
                    Text(
                      'Qty',
                      style: productOrderStyle['OrderLabel'],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '\$${product.price}',
                      style: productOrderStyle['OrderData'],
                    ),
                    Text(
                      'Price',
                      style: productOrderStyle['OrderLabel'],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
