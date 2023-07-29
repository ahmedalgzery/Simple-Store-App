import 'package:storapp/helper/api.dart';

// The AllCategoriesService class is responsible for fetching all categories of products from the API.
class AllCategoriesService {
  // The getAllCategories method sends an HTTP GET request to the API to fetch all product categories.
  // It returns a Future<List<dynamic>> representing the list of product categories.
  Future<List<dynamic>> getAllCategories() async {
    // Use the Api.get method to send an HTTP GET request to the API endpoint.
    // The endpoint for fetching categories is 'https://fakestoreapi.com/products/categories'.
    List<dynamic> data = await Api.get(url: 'https://fakestoreapi.com/products/categories');

    // Return the fetched data, which is a list of product categories.
    return data;
  }
}
