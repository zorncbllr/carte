import 'package:carte/components/credit_card.dart';
import 'package:carte/components/order_tile.dart';
import 'package:carte/stores/user_store.dart';
import 'package:carte/components/carte_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserStore>(
      builder: (context, value, child) => Scaffold(
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
                itemCount: value.currentUser == null
                    ? 0
                    : value.currentUser!.orders.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => OrderTile(
                  order: value.currentUser!.orders[index],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              CreditCard(
                user: value.currentUser!,
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
      ),
    );
  }
}
