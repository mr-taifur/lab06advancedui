import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailsPage(),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('assets/images/apple_watch.png', height: 200),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, color: Colors.orange, size: 10),
                SizedBox(width: 5),
                Icon(Icons.circle, color: Colors.grey, size: 10),
                SizedBox(width: 5),
                Icon(Icons.circle, color: Colors.grey, size: 10),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apple Watch Series 6',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: List.generate(5, (index) => Icon(Icons.star, color: Colors.amber, size: 18)),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '₦45,000',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '₦55,000',
                        style: TextStyle(fontSize: 16, decoration: TextDecoration.lineThrough, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Available in stock',
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'About',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'NOT FOR YOU COZ YOU GORIBS.',
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () {},
                      child: Text('Add to cart', style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
