import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  CategoryButton({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
  });

  String text;
  late bool isActive;
  VoidCallback onTap;

  @override
  _CategoryButtonState createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: widget.isActive
              ? Theme.of(context).primaryColor
              : Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(1000),
        ),
        margin: EdgeInsets.only(right: 8),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color:
                  widget.isActive ? Colors.white : Theme.of(context).hintColor,
            ),
          ),
        ),
      ),
    );
  }
}
