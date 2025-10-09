import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(name: 'Laptop', price: 12000000),
      Item(name: 'Mouse', price: 150000),
      Item(name: 'Keyboard', price: 300000),
      Item(name: 'Monitor', price: 2500000),
      Item(name: 'Printer', price: 2200000),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Barang Belanja')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item,
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                title: Text(item.name),
                subtitle: Text('Rp ${item.price}'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
