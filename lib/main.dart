//الحسين عبد الحكيم حسن
//code: 11
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/providers/cart_provider.dart';
import 'package:flutter_application_1/features/auth/providers/favorite_provider.dart';
import 'package:flutter_application_1/features/auth/providers/history_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/auth/views/home_screen.dart';
import 'package:provider/provider.dart' as providerlib;

void main() {
  runApp(
    ProviderScope(
      child: providerlib.MultiProvider(
        providers: [
          providerlib.ChangeNotifierProvider(create: (_) => FavoriteProvider()),
          providerlib.ChangeNotifierProvider(create: (_) => CartProvider()),
          providerlib.ChangeNotifierProvider(create: (_) => HistoryProvider()),
        ],
        child: const MainApp(),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
