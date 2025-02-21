import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  CategoryButton({
    super.key,
    required this.text,
    required this.isActive,
  });

  final cardColor = const Color.fromARGB(255, 36, 36, 36);
  final textColor = const Color.fromARGB(255, 128, 128, 128);
  final activeColor = const Color.fromARGB(255, 4, 133, 71);
  String text;
  late bool isActive;

  @override
  _CategoryButtonState createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: widget.isActive ? widget.activeColor : widget.cardColor,
        borderRadius: BorderRadius.circular(1000),
      ),
      margin: EdgeInsets.only(right: 8),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
            color: widget.isActive ? Colors.white : widget.textColor,
          ),
        ),
      ),
    );
  }
}
