import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/features/auth/models/product.dart';

class ProductRepository {
  final String apiUrl = "https://dummyjson.com/products";

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
    final Map<String, dynamic> jsonData = json.decode(response.body);
    final List<dynamic> data = jsonData['products'];
      return data.map((json) => Product.fromJson(json)).toList();
    } else{
      throw Exception("There is an Error");
    }
  }
}
