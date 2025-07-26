import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/providers/history_provider.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key,});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  @override
  Widget build(BuildContext context) {
    final provider = HistoryProvider.of(context);
    final finalList = provider.history;
    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: [
                const Text(
                  'Order History',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      finalList[index].title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      finalList[index].description,
                      overflow: TextOverflow.ellipsis,
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(finalList[index].images[0]),
                      backgroundColor: Colors.blueGrey,
                    ),
                    trailing: Text(
                      finalList[index].quantity.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold),
                      
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
