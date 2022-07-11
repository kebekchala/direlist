import 'package:direlist/models/fetch_products.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<List<ProductModel>?> fetchProducts() async {
    final response =
        await client.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    }
  }
}
