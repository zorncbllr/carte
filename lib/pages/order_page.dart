import 'package:carte/components/credit_card.dart';
import 'package:carte/components/order_tile.dart';
import 'package:carte/data/products.dart';
import 'package:carte/models/order.dart';
import 'package:carte/models/user.dart';
import 'package:carte/utils/carte_button.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  User user = User(
    name: 'Ferra Alexandra',
    email: 'ferra@gmail.com',
    password: '123456',
    orders: [
      Order(product: products[0], quantity: 1),
      Order(product: products[1], quantity: 2),
    ],
    cardNumber: '2304 3234 2424',
    address: '21 Maryanarka St',
  );

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
            ListView.builder(
              itemCount: user.orders.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => OrderTile(
                order: user.orders[index],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            CreditCard(
              user: user,
            ),

            SizedBox(
              height: 20,
            ),

            // computation card
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

      bottomNavigationBar: CarteButton(
        onTap: () {},
        label: 'Proceed Order',
      ),
    );
  }
}
