import 'package:flutter/material.dart';

// The customTextButton is a function that returns a customized TextButton widget.
// It takes two required parameters: onPressed and text.
Widget customTextButton({
  required VoidCallback onPressed,
  required String text,
}) {
  return TextButton(
    // Define the style for the button using ButtonStyle.
    style: ButtonStyle(
      minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 30.0)), // Set the minimum size of the button.
      alignment: Alignment.center, // Align the content of the button to the center.
      backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(170, 119, 255, 1)), // Set the background color of the button.
    ),
    onPressed: onPressed, // Define the function to be executed when the button is pressed.
    child: Text(
      text, // The text to be displayed on the button.
      style: const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ), // Define the style for the text on the button.
    ),
  );
}
