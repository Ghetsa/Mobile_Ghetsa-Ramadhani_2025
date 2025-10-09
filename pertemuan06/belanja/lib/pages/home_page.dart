import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Laptop',
        price: 12000000,
        image: 'assets/images/laptop.png',
        stock: 5,
        rating: 4.8,
      ),
      Item(
        name: 'Mouse',
        price: 150000,
        image: 'assets/images/mouse.png',
        stock: 10,
        rating: 4.6,
      ),
      Item(
        name: 'Keyboard',
        price: 300000,
        image: 'assets/images/keyboard.png',
        stock: 8,
        rating: 4.7,
      ),
      Item(
        name: 'Monitor',
        price: 2500000,
        image: 'assets/images/monitor.png',
        stock: 4,
        rating: 4.5,
      ),
      Item(
        name: 'Printer',
        price: 2200000,
        image: 'assets/images/printer.png',
        stock: 6,
        rating: 4.3,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Toko IT Belanja'), centerTitle: true),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.75,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: item.name,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(
                        item.image,
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('Rp ${item.price}'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(item.rating.toString()),
                    ],
                  ),
                  Text('Stok: ${item.stock}'),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Nama: Ghetsa Ramadhani Riska Arryanti | NIM: 2341720004',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
