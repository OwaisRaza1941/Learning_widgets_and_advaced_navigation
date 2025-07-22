import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String productId;

  ProductPage({super.key, required this.productId});

  final List<Map<String, dynamic>> products = [
    {
      'id': '1',
      'name': 'Laptop',
      'price': 999,
      'description': 'High performance laptop',
      'image': 'assets/image1.png',
    },
    {
      'id': '2',
      'name': 'Phone',
      'price': 699,
      'description': 'Latest smartphone',
      'image': 'assets/image2.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final product = products.firstWhere((p) => p['id'] == productId);

    return Scaffold(
      appBar: AppBar(title: Text(product['name'])),
      body: Column(
        children: [
          Image.asset(
            product['image'],
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          Text(product['description']),
          Text('\$${product['price']}'),
        ],
      ),
    );
  }
}
