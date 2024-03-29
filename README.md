# StorApp - Flutter E-commerce App

StorApp is a mobile e-commerce application built using Flutter, a popular UI toolkit for creating beautiful and fast mobile, web, and desktop applications. The app allows users to browse and view various products, add them to the cart, and update product information. It provides a smooth and intuitive user experience for shopping online.

## Features

- Browse and view a list of products.
- View detailed information about each product, including title, price, description, and image.
- Add products to the cart for later purchase.
- Update product information, such as title, price, description, and image.
- Categorized products for easy navigation.
- Smooth and responsive user interface.

## Installation

1. Ensure you have Flutter installed on your machine. If not, follow the instructions on the [Flutter website](https://flutter.dev/docs/get-started/install) to set it up.
2. Clone this repository to your local machine using the following command:
git clone <https://github.com/ahmedalgzery/Simple-Store-App>
3. Navigate to the project directory:`cd StorApp`

4. Run the app on your connected device or emulator:`flutter run`

## Dependencies

The following packages are used in this project:

- `flutter/material`: The foundation of the Flutter Material Design.
- `http`: For making HTTP requests to the API.
- `font_awesome_flutter`: For using FontAwesome icons in the app.
- `modal_progress_hud_nsn`: For showing a loading spinner during API calls.

To install the dependencies, run the following command:`flutter pub get`

## API Integration

The app uses the [FakeStoreAPI](https://fakestoreapi.com) for fetching product data. The API provides various endpoints for retrieving product details, categories, and performing CRUD operations.

## Code Structure

The app's code is structured as follows:

- `models`: Contains the data models for the app, including `ProductModel` and `RatingModel`.
- `services`: Contains classes responsible for interacting with the API, such as `Api`, `AllCategoriesService`, `CategoriesService`, `AllProductService`, `UpdateProduct`, and `AddProduct`.
- `screens`: Contains the main screens of the app, including `HomePage` and `UpdateProductPage`.
- `widgets`: Contains custom widgets used in the app, such as `CustomCard`, `CustomButton`, and `CustomTextFormField`.

## Contributions

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or create a pull request.

## License

The project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---
**Note**: The provided README is a template and doesn't contain actual content. It's a general structure that you can use as a starting point for creating your README file. Replace the placeholders with actual content specific to your StorApp project, such as screenshots, installation steps, dependencies, API integration details, and any other relevant information. Make sure to update the code structure section based on your project's actual directory structure and describe the functionality of each package used in the dependencies section.
