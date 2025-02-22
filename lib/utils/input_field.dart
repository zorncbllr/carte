import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  InputField({
    super.key,
    required this.hintText,
  });

  String hintText;

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(1000),
          border: Border.all(
            width: 0.5,
            color: Theme.of(context).hintColor,
          )),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 18),
        ),
        style: TextStyle(
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}
