import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final hint;
  final fieldController;
  final keyboard;
  final prefix;
  DefaultFormField(
      {required this.prefix,
      required this.keyboard,
      required this.hint,
      required this.fieldController});

  // final TextEditingController fieldController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: fieldController,
      showCursor: true,
      keyboardType: keyboard,
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: hint,
          prefixIcon: Icon(prefix),
          fillColor: Colors.white),
    );
  }
}
