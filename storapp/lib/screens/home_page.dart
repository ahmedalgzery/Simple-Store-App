import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storapp/models/product_model.dart';
import 'package:storapp/services/get_all_product_services.dart';
import 'package:storapp/widget/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Unique identifier for this page used in navigation.
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // Placeholder for a cart icon, which can be used for further functionality.
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: const Color.fromRGBO(98, 205, 255, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
        // Use FutureBuilder to asynchronously fetch and display product data.
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // If product data is available, display them using a GridView.
              List<ProductModel> product = snapshot.data!;
              return GridView.builder(
                itemCount: product.length,
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 100,
                ),
                itemBuilder: (context, index) {
                  // CustomCard widget is used to display each product's information.
                  return CustomCard(
                    product: product[index],
                  );
                },
              );
            } else {
              // Display a loading indicator while waiting for product data to be fetched.
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
      backgroundColor: const Color.fromRGBO(201, 238, 255, 1),
    );
  }
}
