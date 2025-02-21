import 'package:carte/components/best_seller.dart';
import 'package:carte/utils/category_button.dart';
import 'package:carte/utils/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cardColor = const Color.fromARGB(255, 36, 36, 36);
  final textColor = const Color.fromARGB(255, 128, 128, 128);
  final activeColor = const Color.fromARGB(255, 4, 133, 71);

  List<dynamic> categories = [
    ['Popular', true],
    ['Earphones', false],
    ['Charger', false],
    ['Protection', false],
    ['Camera', false]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 14, 14, 14),
        foregroundColor: textColor,
      ),

      drawer: Drawer(
        backgroundColor: cardColor,
      ),

      // body contents
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          spacing: 18,
          children: [
            // header
            Row(
              spacing: 12,
              children: [
                // search bar
                CustomSearchBar(),
                // slidders action button
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: cardColor,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    color: textColor,
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),

            // category buttons
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) => CategoryButton(
                  isActive: categories[index][1],
                  text: categories[index][0],
                ),
              ),
            ),

            SizedBox(),

            // product cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: activeColor,
                  ),
                ),
              ],
            ),

            // product list per category
            BestSeller(),

            // add button
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: activeColor,
                borderRadius: BorderRadius.circular(1000),
              ),
              child: Text(
                'Add New Product',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
