import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storapp/models/product_model.dart';
import 'package:storapp/services/get_all_product_services.dart';
import 'package:storapp/widget/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.white,
              ))
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
          child: FutureBuilder<List<ProductModel>>(
              future: AllProductService().getAllProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ProductModel> product = snapshot.data!;
                  return GridView.builder(
                      itemCount: product.length,
                      clipBehavior: Clip.none,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.5,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 100),
                      itemBuilder: (context, index) {
                        return CustomCard(
                          product: product[index],
                        );
                      });
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              })),
      backgroundColor: const Color.fromRGBO(201, 238, 255, 1),
    );
  }
}
