import 'package:flutter/material.dart';

const String ImageDart = 'assets/ex3/dart.png';
const String ImageFirebase = 'assets/ex3/firebase.png';
const String ImageFlutter = 'assets/ex3/flutter.png';

enum Product {
  dart(
    title: 'Dart',
    description: 'The best object language',
    images: ImageDart,
  ),
  firebase(
    title: 'Firebase',
    description: 'The best cloud database',
    images: ImageFirebase,
  ),
  flutter(
    title: 'Flutter',
    description: 'The best mobile widget library',
    images: ImageFlutter,
  );

  final String title;
  final String description;
  final String images;
  const Product({
    required this.title,
    required this.description,
    required this.images,
  });
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text('Products',),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ProductCard(product: Product.dart),
                    ProductCard(product:  Product.firebase),
                    ProductCard(product: Product.flutter),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            product.images,
            width: 100,
            height: 120,
          ),
          Text(
            product.title,
            style: TextStyle(fontSize: 30,
            color: Colors.black),
          ),
          Text(product.description,
          style: TextStyle(fontSize: 10,
          color: Colors.black),),
        ],
      ),
    );
  }
}
