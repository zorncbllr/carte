import 'package:carte/components/login_form.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  InputField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  String hintText;

  InputEditingController controller;
  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => setState(() {
        widget.controller.errorText = null;
      }),
      controller: widget.controller,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        hintText: widget.hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1000),
          borderSide: BorderSide(
            color: Theme.of(context).hintColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1000),
          borderSide: BorderSide(
            color: widget.controller.errorText == null
                ? Theme.of(context).hintColor
                : Colors.redAccent,
            style: BorderStyle.solid,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 18),
        errorText: widget.controller.errorText,
      ),
      style: TextStyle(
        color: Colors.grey.shade300,
      ),
    );
  }
}
