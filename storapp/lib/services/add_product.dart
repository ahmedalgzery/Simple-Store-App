import 'package:storapp/helper/api.dart';
import 'package:storapp/models/product_model.dart';

// The AddProduct class is responsible for adding a new product to the API.
class AddProduct {
  // The addProduct method sends an HTTP POST request to the API with the provided product information
  // and returns the newly added product as a Future<ProductModel>.
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    // Create a Map representing the product data to be sent in the request body.
    Map<String, dynamic> data = await Api.post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });

    // Convert the response data (Map) to a ProductModel object using the fromJson factory constructor.
    return ProductModel.fromJson(data);
  }
}
