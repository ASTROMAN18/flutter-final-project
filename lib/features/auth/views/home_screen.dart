import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/cart/cart_details.dart';
import 'package:flutter_application_1/features/auth/views/favorite_screen.dart';
import 'package:flutter_application_1/features/auth/views/history_screen.dart';
import 'package:flutter_application_1/features/auth/views/home_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List screens = [
    const HomeContent(),
    const FavoriteScreen(),
    const HistoryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "E-Shop",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CartDetails()),
                ),
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
        backgroundColor: Colors.blueGrey,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() => currentIndex = value);
        },
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(label: 'Order History', icon: Icon(Icons.book)),
        ],
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
