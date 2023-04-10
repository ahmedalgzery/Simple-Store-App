// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:storapp/models/product_model.dart';
import 'package:storapp/services/update_product.dart';
import 'package:storapp/widget/custom_button.dart';
import 'package:storapp/widget/custom_text_form_feild.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});
  static String id = 'prudactPage';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? name, desc, image, price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
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
                customTextFormField(
                    onChanged: (data) {
                      name = data;
                    },
                    hintText: 'Product Name',
                    keyboardType: TextInputType.text),
                const SizedBox(
                  height: 10,
                ),
                customTextFormField(
                    onChanged: (data) {
                      desc = data;
                    },
                    hintText: 'Describtion',
                    keyboardType: TextInputType.text),
                const SizedBox(
                  height: 10,
                ),
                customTextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (data) {
                      price = data;
                    },
                    hintText: 'Price'),
                const SizedBox(
                  height: 10,
                ),
                customTextFormField(
                    onChanged: (data) {
                      image = data;
                    },
                    hintText: 'Image',
                    keyboardType: TextInputType.url),
                const SizedBox(
                  height: 50,
                ),
                customTextButton(
                    onPressed: () async {
                      isLoading = true;
                      setState(() {});
                      try {
                        await updateProductFun(product);
                      } catch (e) {
                        isLoading = false;
                        setState(() {});
                      }
                      isLoading = false;
                      setState(() {});
                    },
                    text: 'Update')
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(201, 238, 255, 1),
      ),
    );
  }

  Future<void> updateProductFun(ProductModel product) async {
    await UpdateProduct().updateProduct(
        id: product.id,
        title: name == null ? product.title : name!,
        price: price == null ? product.price.toString() : price!,
        description: desc == null ? product.description : desc!,
        image: image == null ? product.imageUrl : image!,
        category: product.category);
  }
}
