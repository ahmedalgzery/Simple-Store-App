// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:storapp/models/product_model.dart';
import 'package:storapp/screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
  // The CustomCard constructor takes a required parameter named `product`.
  // This parameter is of type ProductModel, representing the product details to be displayed.
  CustomCard({
    required this.product,
    super.key,
  });

  // The product variable stores the ProductModel data passed to the constructor.
  // It is marked as `required` in the constructor to ensure it is provided when creating the widget.
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // When the card is tapped, it navigates to the UpdateProductPage
        // and passes the product data as arguments using the Navigator.
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 0,
                offset: const Offset(10, 10),
              ),
            ]),
            child: Card(
              elevation: 10,
              color: const Color.fromRGBO(151, 222, 255, 1),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Display the product title with ellipsis if it exceeds two lines.
                    Text(
                      product.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.purpleAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Display the product price with a dollar sign.
                        Text(
                          r'$' '${product.price.toString()}',
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Display a heart icon in red color to represent favoriting the product.
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 40,
            bottom: 100,
            child: Image.network(
              // Display the product image using the provided URL from the ProductModel.
              product.imageUrl,
              height: 80,
              width: 80,
              //color: Color.fromRGBO(201, 238, 255, 1),
            ),
          ),
        ],
      ),
    );
  }
}
