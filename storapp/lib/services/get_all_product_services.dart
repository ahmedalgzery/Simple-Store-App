import 'package:storapp/helper/api.dart';
import 'package:storapp/models/product_model.dart';

// The AllProductService class is responsible for fetching all products from the API.
class AllProductService {
  // The getAllProducts method sends an HTTP GET request to the API to fetch all products.
  // It returns a Future<List<ProductModel>> representing the list of products.
  Future<List<ProductModel>> getAllProducts() async {
    // Use the Api.get method to send an HTTP GET request to the API endpoint.
    // The endpoint for fetching all products is 'https://fakestoreapi.com/products'.
    List<dynamic> data = await Api.get(url: 'https://fakestoreapi.com/products');

    // Create an empty list to store the fetched products.
    List<ProductModel> productList = [];

    // Iterate through the fetched data (list of product data) and convert each product data to a ProductModel object.
    for (int i = 0; i < data.length; i++) {
      // Convert the product data (Map) to a ProductModel object using the fromJson factory constructor.
      productList.add(ProductModel.fromJson(data[i]));
    }

    // Return the list of ProductModel objects representing all the products.
    return productList;
  }
}
