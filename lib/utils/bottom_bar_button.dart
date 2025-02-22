import 'package:flutter/material.dart';

class BottomBarButton extends StatefulWidget {
  BottomBarButton({
    super.key,
    required this.label,
    required this.onClick,
  });

  String label;
  VoidCallback onClick;

  @override
  _BottomBarButtonState createState() => _BottomBarButtonState();
}

class _BottomBarButtonState extends State<BottomBarButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: Container(
        height: 50,
        margin: EdgeInsets.only(
          bottom: 24,
          left: 80,
          right: 80,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(1000),
        ),
        child: Center(
          child: Text(
            widget.label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
