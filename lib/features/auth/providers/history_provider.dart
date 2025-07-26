import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/models/product.dart';
import 'package:provider/provider.dart';

class HistoryProvider extends ChangeNotifier {
  final List<Product> _history = [];
  List<Product> get history => _history;

  void toggleHistory(Product product) {
    _history.add(product);
    notifyListeners();
  }

  bool isExist(Product product) {
    final isExist = _history.contains(product);
    return isExist;
  }

  static HistoryProvider of(BuildContext context, {bool listen = true}) {
    final historyProvider = Provider.of<HistoryProvider>(
      context,
      listen: false,
    );
    return historyProvider;
  }
}