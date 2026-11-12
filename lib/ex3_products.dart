import 'package:flutter/material.dart';

enum Product { dart, flutter, firebase }

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Products',
                 style: TextStyle(fontSize: 20)),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductCard(
                      description: 'The best object language',
                      product: Product.dart,
                      title: 'Dart',
                    ),
                    SizedBox(height: 15,),
                    ProductCard(title: 'Flutter',
                      description: 'the best mobile widet library',
                      product: Product.flutter),
                    
                    SizedBox(height: 15,),
                    ProductCard(title: 'Firebase',
                      description: 'the best cloud database',
                      product: Product.firebase),
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
  final String title;
  final String description;
  final Product product;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final imagePath = switch (product) {
      Product.dart => 'assets/ex3/dart.png',
      Product.flutter => 'assets/ex3/flutter.png',
      Product.firebase => 'assets/ex3/firebase.png',
    };

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, width: double.infinity, height:120, alignment: Alignment.centerLeft,),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 30),),
              Text(description),
            ],
          ),
        ],
      ),
    );
  }
}