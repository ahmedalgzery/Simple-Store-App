// Importing required packages and dependencies
// (some imports are not shown in the snippet).
// ignore_for_file: must_be_immutable is used to ignore linting errors related to immutability.

import 'package:flutter/material.dart';
import 'package:storapp/models/product_model.dart';
import 'package:storapp/services/update_product.dart';
import 'package:storapp/widget/custom_button.dart';
import 'package:storapp/widget/custom_text_form_feild.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// The UpdateProductPage class is a StatefulWidget representing the page for updating product information.
class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});

  // Unique identifier for this page used in navigation.
  static String id = 'prudactPage';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

// The _UpdateProductPageState class is the corresponding State class for the UpdateProductPage.
class _UpdateProductPageState extends State<UpdateProductPage> {
  // Variables to hold the updated product information.
  String? name, desc, image, price;

  // A boolean variable to track whether data is being updated (to show a loading spinner).
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    // Fetch the product data passed from the previous page using ModalRoute settings arguments.
    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Updating product',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
          backgroundColor: const Color.fromRGBO(98, 205, 255, 1),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                // Custom text form field for updating the product name.
                customTextFormField(
                  onChanged: (data) {
                    name = data;
                  },
                  hintText: 'Product Name',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                ),
                // Custom text form field for updating the product description.
                customTextFormField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'Description',
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                ),
                // Custom text form field for updating the product price.
                customTextFormField(
                  keyboardType: TextInputType.number,
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'Price',
                ),
                const SizedBox(
                  height: 10,
                ),
                // Custom text form field for updating the product image URL.
                customTextFormField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'Image',
                  keyboardType: TextInputType.url,
                ),
                const SizedBox(
                  height: 50,
                ),
                // Custom text button for initiating the update process.
                customTextButton(
                  onPressed: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      // Call the updateProductFun to update the product using the UpdateProduct service.
                      await updateProductFun(product);
                    } catch (e) {
                      isLoading = false;
                      setState(() {});
                    }
                    isLoading = false;
                    setState(() {});
                  },
                  text: 'Update',
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(201, 238, 255, 1),
      ),
    );
  }

  // A function to handle the product update process using the UpdateProduct service.
  Future<void> updateProductFun(ProductModel product) async {
    await UpdateProduct().updateProduct(
      id: product.id,
      title: name == null ? product.title : name!,
      price: price == null ? product.price.toString() : price!,
      description: desc == null ? product.description : desc!,
      image: image == null ? product.imageUrl : image!,
      category: product.category,
    );
  }
}
