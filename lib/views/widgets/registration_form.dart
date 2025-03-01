import 'package:carte/utils/input_editing_controller.dart';
import 'package:carte/views/widgets/input_field.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final InputEditingController _nameController = InputEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        children: [
          InputField(hintText: 'Enter your name', controller: _nameController),
        ],
      ),
    );
  }
}
