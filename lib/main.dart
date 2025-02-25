import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDetailsPage(),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://cdn.pixabay.com/photo/2024/01/15/11/36/batman-8510024_960_720.png",
            ),
            const SizedBox(height: 10), // Add spacing between images
            Image.network(
              "https://cdn.pixabay.com/photo/2023/01/06/02/01/ai-generated-7700259_1280.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
