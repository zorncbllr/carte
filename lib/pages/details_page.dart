import 'package:carte/components/product_card.dart';
import 'package:carte/models/product.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({
    super.key,
    required this.product,
  });

  Product product;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final cardColor = const Color.fromARGB(255, 36, 36, 36);
  final activeColor = const Color.fromARGB(255, 4, 133, 71);
  final textColor = const Color.fromARGB(255, 128, 128, 128);

  void switchMainImage(int index) {
    setState(() {
      String temp = widget.product.imagePath;
      widget.product.imagePath = widget.product.subImagesPath[index];
      widget.product.subImagesPath[index] = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // header
      appBar: AppBar(
        foregroundColor: textColor,
        backgroundColor: const Color.fromARGB(255, 14, 14, 14),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Details',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        leading: IconButton.filled(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(cardColor),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
          ),
        ),
      ),

      // contents
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.product.productName,
                  style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                    color: activeColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            // product card
            ProductCard.details(product: widget.product),

            // product sub-images
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  for (int i = 0; i < widget.product.subImagesPath.length; i++)
                    GestureDetector(
                      onTap: () => switchMainImage(i),
                      child: Container(
                        width: 70,
                        height: 70,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Image.asset(
                          widget.product.subImagesPath[i],
                          width: 70,
                        ),
                      ),
                    )
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            // product description
            Column(
              spacing: 14,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.more_vert_sharp,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                Text(
                  'A sleek black joystick with neon accents and a comfortable grip for precise gaming control...',
                  style: TextStyle(
                    color: textColor,
                  ),
                ),
                Row(
                  spacing: 8,
                  children: [
                    // ratings
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Text(
                        '${widget.product.ratings} Rating',
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                    ),

                    // sales
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Text(
                        '${widget.product.sales} Sales',
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
