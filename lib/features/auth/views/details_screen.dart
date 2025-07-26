import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/models/product.dart';
import 'package:flutter_application_1/features/auth/providers/cart_provider.dart';
import 'package:flutter_application_1/features/cart/cart_details.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Details"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueGrey,
                  ),
                  child: Image.network(product.images[0]),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    product.title.toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$'
                    '${product.price}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    product.description,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          alignment: Alignment.center,
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 10,
          decoration: const BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Text(
                '\$'
                '${product.price}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: ElevatedButton.icon(
                  onPressed: () {
                    provider.toggleProduct(product);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CartDetails(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.send),
                  label: const Text("Add To Cart"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
