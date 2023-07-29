import 'package:storapp/helper/api.dart';
import 'package:storapp/models/product_model.dart';

// The UpdateProduct class is responsible for updating an existing product's information on the API.
class UpdateProduct {
  // The updateProduct method sends an HTTP PUT request to the API to update a product's information.
  // It takes the updated product information (id, title, price, description, image, and category) as input.
  // It returns a Future<ProductModel> representing the updated product.
  Future<ProductModel> updateProduct({
    required String id,
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    // Use the Api.put method to send an HTTP PUT request to the API endpoint.
    // The endpoint for updating a product's information is 'https://fakestoreapi.com/products/$id',
    // where $id is the unique identifier of the product being updated.
    Map<String, dynamic> data = await Api.put(url: 'https://fakestoreapi.com/products/$id', body: {
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
