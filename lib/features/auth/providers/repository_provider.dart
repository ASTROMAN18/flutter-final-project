import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/features/auth/repository/product_repository.dart';
import 'package:flutter_application_1/features/auth/models/product.dart';

final productProvider = Provider<ProductRepository>((ref) {
  return ProductRepository();
});
final productsProvider = FutureProvider<List<Product>>((ref) async {
  final repository = ref.read(productProvider);
  return repository.fetchProducts();
});
