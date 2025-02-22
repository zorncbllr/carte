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
  void switchMainImage(int index) {
    setState(() {
      List<String> temp = widget.product.subImagesPath.toList();
      temp[index] = widget.product.imagePath;

      widget.product = Product(
        imagePath: widget.product.subImagesPath[index],
        price: widget.product.price,
        productName: widget.product.productName,
        ratings: widget.product.ratings,
        sales: widget.product.sales,
        subImagesPath: temp,
        category: widget.product.category,
        description: widget.product.description,
        comments: widget.product.comments,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // header
      appBar: AppBar(
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
            backgroundColor: WidgetStatePropertyAll(
              Theme.of(context).cardColor,
            ),
          ),
          onPressed: () => Navigator.pop(context),
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
                    color: Theme.of(context).primaryColor,
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
            Row(
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
                        color: Theme.of(context).cardColor,
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
                  widget.product.description,
                  style: TextStyle(
                    color: Theme.of(context).hintColor,
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
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Text(
                        '${widget.product.ratings} Rating',
                        style: TextStyle(
                          color: Theme.of(context).hintColor,
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
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: Text(
                        '${widget.product.sales} Sales',
                        style: TextStyle(
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),

            SizedBox(
              height: 30,
            ),

            Text(
              'Reviews',
              style: TextStyle(
                color: Colors.grey.shade300,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(
              height: 14,
            ),

            // product comments
            SizedBox(
              height: 120,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: widget.product.comments.length,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(12),
                  width: 250,
                  margin: EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    spacing: 12,
                    children: [
                      Text(
                        widget.product.comments[index].comment,
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      Row(
                        spacing: 14,
                        children: [
                          // Image.asset(widget.product.comments[0].profileImagePath),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              color: const Color.fromARGB(255, 94, 43, 27),
                            ),
                          ),
                          Text(
                            widget.product.comments[index].name,
                            style: TextStyle(
                              color: Colors.grey.shade300,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
