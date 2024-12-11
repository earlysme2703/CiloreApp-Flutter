import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Tambahkan scrollview untuk antisipasi layar kecil
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Sedikit lebih besar padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('Tentang Cilore'),
              const SizedBox(height: 15),
              _buildDescriptionText(),
              const SizedBox(height: 20),
              _buildFeaturesList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.blue[800], // Tambahkan warna
      ),
    );
  }

  Widget _buildDescriptionText() {
    return Text(
      'Cilore adalah aplikasi yang menyediakan informasi lengkap '
      'tentang berbagai destinasi wisata di Indonesia. Kami bertujuan untuk '
      'membantu Anda menemukan tempat wisata terbaik dengan mudah dan nyaman.',
      style: TextStyle(
        fontSize: 16,
        color: Colors.black87,
        height: 1.5, // Tambahkan jarak antar baris
      ),
      textAlign: TextAlign.justify, // Rata kanan-kiri
    );
  }

  Widget _buildFeaturesList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fitur Kami:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.blue[700],
          ),
        ),
        const SizedBox(height: 10),
        ...['Daftar destinasi populer', 
            'Rekomendasi wisata hemat', 
            'Informasi terbaru tentang tempat wisata']
            .map((feature) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Icon(Icons.check_circle_outline, color: Colors.blue[700], size: 20),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      feature,
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            )).toList(),
        const SizedBox(height: 15),
        Text(
          'Selamat menikmati liburan Anda!',
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            color: Colors.blue[700],
          ),
        ),
      ],
    );
  }
}