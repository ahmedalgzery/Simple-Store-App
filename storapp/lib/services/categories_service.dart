import 'package:storapp/helper/api.dart';
import 'package:storapp/models/product_model.dart';

// The CategoriesService class is responsible for fetching products of a specific category from the API.
class CategoriesService {
  // The getCategoriesProduct method sends an HTTP GET request to the API to fetch products of a given category.
  // It takes the categoryName as input and returns a Future<List<ProductModel>> representing the list of products.
  Future<List<ProductModel>> getCategoriesProduct({required String categoryName}) async {
    // Use the Api.get method to send an HTTP GET request to the API endpoint.
    // The endpoint for fetching products of a specific category is 'https://fakestoreapi.com/products/category/$categoryName',
    // where $categoryName is the name of the category provided as input.
    List<dynamic> data = await Api.get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    // Create an empty list to store the fetched products.
    List<ProductModel> productList = [];

    // Iterate through the fetched data (list of product data) and convert each product data to a ProductModel object.
    for (int i = 0; i < data.length; i++) {
      // Convert the product data (Map) to a ProductModel object using the fromJson factory constructor.
      productList.add(ProductModel.fromJson(data[i]));
    }

    // Return the list of ProductModel objects representing the products of the specified category.
    return productList;
  }
}
