import 'package:flutter/material.dart';

Widget customTextButton({
  required VoidCallback onPressed,
  required String text,
}) {
  return TextButton(
    style: ButtonStyle(
      minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 30.0)),
      alignment: Alignment.center,
      backgroundColor: MaterialStateProperty.all(
          const Color.fromRGBO(170, 119, 255, 1),
          ),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
