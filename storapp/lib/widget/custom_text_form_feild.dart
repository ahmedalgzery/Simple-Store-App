import 'package:flutter/material.dart';

// The customTextFormField is a function that returns a customized TextFormField widget.
// It takes several parameters as input to customize the behavior and appearance of the text field.
Widget customTextFormField({
  Function(String)? onChanged, // A callback function that is invoked when the text in the field changes.
  required String hintText, // The hint text to be displayed inside the text field when it is empty.
  @required TextInputType? keyboardType, // The type of keyboard to be shown when the field is focused.
  bool? obscureText = false, // Whether the text in the field should be obscured (e.g., for password fields).
}) {
  return TextFormField(
    obscureText: obscureText!, // Determine if the text should be obscured based on the provided value.
    validator: (value) {
      // The validator function is used to validate the user input.
      // If the field is required and left empty, it returns an error message.
      // Otherwise, it returns null, indicating that the input is valid.
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
      hintText: hintText, // Set the hint text to be displayed inside the text field.
      label: Text(hintText), // Set the label text to be displayed above the text field when it has focus.
      hintStyle: const TextStyle(), // Define the style for the hint text.
      labelStyle: const TextStyle(), // Define the style for the label text.
    ),
    keyboardType: keyboardType, // Set the type of keyboard to be shown when the field is focused.
    onChanged: onChanged, // Set the callback function to be executed when the text changes.
  );
}
