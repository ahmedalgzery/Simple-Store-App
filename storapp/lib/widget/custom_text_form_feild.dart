import 'package:flutter/material.dart';

Widget customTextFormField({
  Function(String)? onChanged,
  required String hintText,
  @required TextInputType? keyboardType,
  bool? obscureText = false,
}) {
  return TextFormField(
    obscureText: obscureText!,
    validator: (value) {
      if (value!.isEmpty) {
        return 'field is required';
      }
      return null;
    },
    
    decoration: InputDecoration(
      border: const OutlineInputBorder(
        
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      hintText: hintText,
      label: Text(hintText),
      hintStyle: const TextStyle(),
      labelStyle: const TextStyle(),
    ),
    onChanged: onChanged,
  );
}
