import 'package:flutter/material.dart';
import 'package:storapp/screens/home_page.dart';
import 'package:storapp/screens/update_product_page.dart';

// The main function is the entry point for the Flutter application.
void main() {
  runApp(const StorApp());
}

// The StorApp class is a stateless widget that serves as the root widget for the application.
class StorApp extends StatelessWidget {
  const StorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set debugShowCheckedModeBanner to false to hide the debug banner in the app.
      debugShowCheckedModeBanner: false,
      // Define the routes for navigating between different screens in the app.
      routes: {
        // The key-value pairs in the routes map associate route names (String) with widget builders.
        // The route names are specified as static constants (id) in the respective screen classes.
        // When navigating to a route, Flutter looks up the route name in the routes map and uses the associated widget builder.
        // The context parameter is passed to the widget builder function to build the specified widget.
        HomePage.id: (context) => const HomePage(), // The 'HomePage' route maps to the HomePage widget.
        UpdateProductPage.id: (context) => const UpdateProductPage(), // The 'UpdateProductPage' route maps to the UpdateProductPage widget.
      },
      // Set the initialRoute to determine the first screen displayed when the app is launched.
      initialRoute: HomePage.id, // The initial route is set to the 'HomePage'.
    );
  }
}
