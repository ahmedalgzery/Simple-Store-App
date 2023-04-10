import 'package:flutter/material.dart';
import 'package:storapp/screens/home_page.dart';
import 'package:storapp/screens/update_product_page.dart';

void main() {
  runApp(const StorApp());
}

class StorApp extends StatelessWidget {
  const StorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        UpdateProductPage.id: (context) =>  const UpdateProductPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
