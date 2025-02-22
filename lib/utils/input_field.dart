import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  InputField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  String hintText;
  TextEditingController controller;
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(1000),
        border: Border.all(
          width: 0.5,
          color: Theme.of(context).hintColor,
        ),
      ),
      child: TextField(
        controller: widget.controller,
        cursorColor: Theme.of(context).primaryColor,
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
