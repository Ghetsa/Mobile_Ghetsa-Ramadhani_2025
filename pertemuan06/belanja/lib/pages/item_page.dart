import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Hero(
              tag: itemArgs.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  itemArgs.image,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              itemArgs.name,
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Harga: Rp ${itemArgs.price}',
                style: const TextStyle(fontSize: 18)),
            Text('Stok tersedia: ${itemArgs.stock} unit'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.star, color: Colors.amber),
                Text(itemArgs.rating.toString()),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Deskripsi Produk:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'Produk berkualitas tinggi untuk kebutuhan IT Anda sehari-hari. '
              'Dijamin awet dan bergaransi resmi.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
