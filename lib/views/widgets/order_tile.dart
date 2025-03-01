import 'package:carte/models/order.dart';
import 'package:flutter/material.dart';

class OrderTile extends StatelessWidget {
  OrderTile({
    super.key,
    required this.order,
  });

  Order order;

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
        spacing: 16,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Image.asset(
              order.product.imagePath,
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
                      order.product.productName,
                      style: productOrderStyle['OrderData'],
                    ),
                    Text(
                      order.product.category[0],
                      style: productOrderStyle['OrderLabel'],
                    ),
                  ],
                ),
                Row(
                  spacing: 36,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          order.quantity.toString(),
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
                          '\$${order.product.price}',
                          style: productOrderStyle['OrderData'],
                        ),
                        Text(
                          'Price',
                          style: productOrderStyle['OrderLabel'],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
