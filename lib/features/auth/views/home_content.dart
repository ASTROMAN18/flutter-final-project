import 'package:flutter_application_1/features/auth/providers/repository_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/views/details_screen.dart';
import 'package:flutter_application_1/features/products/product_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeContent extends ConsumerWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productsProvider);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            "All Products",
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: productsAsync.when(
              data:
                  (products) => GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 100 / 140,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                        return GestureDetector(onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(product:product)
                          )
                          ),
                          child:  ProductCard(product: product),
                          );
                    },
                  ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error:
                  (err, stack) =>
                      Center(child: Text("There is an Error: $err")),
            ),
          ),
        ],
      ),
    );
  }
}
