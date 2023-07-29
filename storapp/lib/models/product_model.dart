// This class represents a product with its properties and rating information.
class ProductModel {
  final dynamic id;            // The unique identifier of the product.
  final String title;          // The title or name of the product.
  final double price;          // The price of the product.
  final String description;    // A brief description of the product.
  final String imageUrl;       // The URL of the image associated with the product.
  final RatingModel rating;    // An instance of the RatingModel class representing the product's rating.
  final String category;       // The category to which the product belongs.

  // Constructor to initialize the properties of the ProductModel class.
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.category,
  });

  // Factory constructor to create a ProductModel instance from JSON data.
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        imageUrl: jsonData['image'],
        category: jsonData['category'],
        rating: RatingModel.fromjson(jsonData['rating']));
  }
}

class RatingModel {
  final double rate;
  final double count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
