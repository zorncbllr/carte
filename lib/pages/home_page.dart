import 'package:carte/components/product_list_view.dart';
import 'package:carte/components/carte_button.dart';
import 'package:carte/components/category_button.dart';
import 'package:carte/components/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeCategoryIndex = 0;

  List<dynamic> categories = [
    ['Popular', true],
    ['Earphones', false],
    ['Charger', false],
    ['Protection', false],
    ['Camera', false]
  ];

  void switchCategories(int index) {
    setState(() {
      for (var category in categories) {
        category[1] = false;
      }
      categories[index][1] = true;
      activeCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Products',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).cardColor,
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

                // shop action button
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: Theme.of(context).cardColor,
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.pushNamed(context, '/orders'),
                    color: Theme.of(context).hintColor,
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
                  onTap: () => switchCategories(index),
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
                  categories[activeCategoryIndex][0],
                  style: TextStyle(
                    color: Theme.of(context).hintColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                // see all action
                Text(
                  'See all',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),

            // product list per category
            ProductListView(
              activeCategory: categories[activeCategoryIndex][0],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CarteButton(
        onTap: () {},
        label: 'Add New Product',
      ),
    );
  }
}
