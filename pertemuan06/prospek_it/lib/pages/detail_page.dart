import 'package:flutter/material.dart';
import '../models/job_model.dart';

class DetailPage extends StatelessWidget {
  final JobModel job;

  const DetailPage({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(job.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // ⬅️ Ubah jadi start agar semua teks rata kiri
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                job.image,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              job.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text('Gaji: ${job.salary}', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                Text('${job.rating} / 5'),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              job.description,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Keahlian yang Dibutuhkan:',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(job.skills, style: const TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
