import 'package:flutter/material.dart';

class CarteButton extends StatefulWidget {
  CarteButton({
    super.key,
    this.secondary = false,
    this.cover = false,
    this.label,
    this.child,
    required this.onTap,
  });

  CarteButton.expand({
    super.key,
    this.secondary = false,
    this.cover = true,
    this.label,
    this.child,
    required this.onTap,
  });

  CarteButton.secondary({
    super.key,
    this.cover = true,
    this.child,
    this.label,
    this.secondary = true,
    required this.onTap,
  });

  VoidCallback onTap;
  late String? label;
  late Widget? child;
  bool cover, secondary;

  @override
  State<CarteButton> createState() => _CarteButtonState();
}

class _CarteButtonState extends State<CarteButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widget.cover ? 0 : 45,
      ),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: widget.secondary
                ? Colors.transparent
                : Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(1000),
            border: Border.all(
              style: BorderStyle.solid,
              width: 0.5,
              color: widget.secondary
                  ? Theme.of(context).hintColor
                  : Colors.transparent,
            ),
          ),
          child: widget.child ??
              Center(
                child: Text(
                  widget.label ?? '',
                  style: TextStyle(
                    color: Colors.grey.shade300,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
