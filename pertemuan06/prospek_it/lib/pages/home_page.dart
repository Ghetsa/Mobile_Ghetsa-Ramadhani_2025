import 'package:flutter/material.dart';
import '../models/job_model.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<JobModel> jobs = [
    JobModel(
      title: 'Software Developer',
      salary: 'Rp 8.000.000 - Rp 15.000.000',
      skills: 'Pemrograman (Java, Python, C++), Git, Problem Solving',
      description:
          'Software Developer bertanggung jawab dalam merancang, mengembangkan, dan memelihara aplikasi sesuai kebutuhan bisnis.',
      image: 'assets/images/software_dev.png',
      rating: 4.8,
    ),
    JobModel(
      title: 'UI/UX Designer',
      salary: 'Rp 6.000.000 - Rp 12.000.000',
      skills: 'Figma, Adobe XD, Wireframing, Design Thinking',
      description:
          'UI/UX Designer berfokus pada pengalaman pengguna dan desain antarmuka agar aplikasi mudah digunakan dan menarik.',
      image: 'assets/images/uiux.png',
      rating: 4.5,
    ),
    JobModel(
      title: 'Data Analyst',
      salary: 'Rp 7.000.000 - Rp 13.000.000',
      skills: 'SQL, Excel, Python, Statistik, Tableau/PowerBI',
      description:
          'Data Analyst bertugas mengumpulkan, menganalisis, dan menginterpretasikan data untuk membantu pengambilan keputusan.',
      image: 'assets/images/data_analyst.png',
      rating: 4.7,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prospek Pekerjaan Lulusan IT')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 3 / 4,
          ),
          itemCount: jobs.length,
          itemBuilder: (context, index) {
            final job = jobs[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(job: job),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12)),
                        child: Image.asset(job.image,
                            fit: BoxFit.cover, width: double.infinity),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(job.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text(job.salary),
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.amber, size: 16),
                              Text(job.rating.toString()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Text(
          'Nama: Ghetsa Ramadhani Riska Arryanti | NIM: 2341720004',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
