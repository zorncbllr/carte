import 'package:carte/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        cardColor: const Color.fromARGB(255, 36, 36, 36),
        hintColor: const Color.fromARGB(255, 128, 128, 128),
        primaryColor: const Color.fromARGB(255, 4, 133, 71),
        scaffoldBackgroundColor: const Color.fromARGB(255, 14, 14, 14),
      ),
    );
  }
}
