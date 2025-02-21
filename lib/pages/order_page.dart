import 'package:carte/components/credit_card.dart';
import 'package:carte/components/order_tile.dart';
import 'package:carte/data/products.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Orders',
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
                  'Product Order',
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

            // product order list view
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  OrderTile(quantity: 1, product: products[0]),
                  OrderTile(quantity: 2, product: products[1]),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            CreditCard(),

            SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 150,
              width: 100,
            ),
          ],
        ),
      ),

      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(1000),
            ),
            child: Text(
              'Proceed Order',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
