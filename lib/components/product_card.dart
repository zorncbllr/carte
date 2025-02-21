import 'package:carte/models/product.dart';
import 'package:carte/pages/details_page.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  ProductCard({
    super.key,
    required this.product,
    this.isDetails = false,
  });

  ProductCard.details({
    super.key,
    required this.product,
    this.isDetails = true,
  });

  Product product;
  bool isDetails;

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  final descriptionCardColor = const Color.fromARGB(255, 77, 77, 77);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!widget.isDetails) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                product: widget.product,
              ),
            ),
          );
        }
      },

      // product card
      child: Container(
        height: widget.isDetails ? 400 : 300,
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.2,
            color: descriptionCardColor,
          ),
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(32),
        ),

        // card content
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            // product image
            Image.asset(widget.product.imagePath),

            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        color: Colors.white,
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            descriptionCardColor,
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_rounded),
                      ),
                    ],
                  ),

                  // product description
                  Container(
                    decoration: BoxDecoration(
                      color: descriptionCardColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        spacing: 12,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // product name
                              Text(
                                widget.product.productName,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),

                              // product sales and ratings
                              Text(
                                '${widget.product.sales} Sales ${widget.product.ratings} Ratings',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),

                          Expanded(child: SizedBox()),

                          Container(
                            color: Colors.white,
                            width: 1,
                            height: 60,
                          ),

                          // product price
                          Text(
                            '\$${widget.product.price}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
