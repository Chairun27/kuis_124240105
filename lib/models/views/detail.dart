import 'package:flutter/material.dart';
import 'package:kuis_124240105/models/data.dart'; 

class DetailPage extends StatelessWidget {
  final Car car;

  const DetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          car.name, // Supaya dapat kembali ke home page lagi 
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // Gambar mobil    
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    car.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 250,
                      color: Colors.grey[300],
                      child: const Icon(Icons.broken_image, size: 80),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Detail mobil   
              const Text(
                "Car Details:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),
              _detailRow("Brand", car.brand), // Brand mobil 
              _detailRow("Name", car.name), // Nama mobil 
              _detailRow("Description", car.description), // Deskripsi mobil 
              const SizedBox(height: 24),

              // Tahun mobil 
              const Text(
                "Tahun",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              Chip(
                label: Text("${car.year}"),
                backgroundColor: Colors.brown[200],
                side: BorderSide(color: Colors.grey.shade400),
              ),
              const SizedBox(height: 24),

              // Harga mobil 
              const Text(
                "Harga",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),

              Chip(
                label: Text("Rp ${car.price}"),
                backgroundColor: Colors.grey[200],
                side: BorderSide(color: Colors.grey.shade400),
              ),

            ],
          ),
        ),
      ),
    );
  }

  // Widget bantuan supaya baris detail rapi
  Widget _detailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[700],
              ),
            ),
          ),
          const Text(": "),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
} 