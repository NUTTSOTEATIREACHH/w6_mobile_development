import 'package:flutter/material.dart';

// EX 3 – The products (handout page: EX 3)
// Part 1: build ONE product card (images are in assets/ex3/).
// Part 2: create the Product enum (follow the UML in the handout).
// Part 3: extract the card into a StatelessWidget called ProductCard.
enum product { dart, flutter, firebase }

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(25),
          child: Column(spacing: 10,
            children: [
              ProductCard(prod: product.dart),
              ProductCard(prod: product.flutter),
              ProductCard(prod: product.firebase)
            ],
          )
        ), // YOUR CODE
      ),
    ),
  );
}

class ProductCard extends StatelessWidget {
  final product prod;
  const ProductCard({
    super.key, required this.prod
  });

  String getImageAsset(prod) {
    if (prod == product.dart) {
      return 'assets/ex3/dart.png';
    } else if (prod == product.flutter) {
      return 'assets/ex3/flutter.png';
    } else {
      return 'assets/ex3/firebase.png';
    }
  }

  String getText(prod) {
    if (prod == product.dart) {
      return 'Dart';
    } else if (prod == product.flutter) {
      return 'Flutter';
    } else {
      return 'Firebase';
    }
  }

  String getDescription(prod) {
    if (prod == product.dart) {
      return 'The best object language';
    } else if (prod == product.flutter) {
      return 'The best mobile widget libary';
    } else {
      return 'The best cloud database';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.white, 
      child: Container(width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(getImageAsset(prod), width: 200, height: 200,),
          Text(getText(prod), style: TextStyle(fontSize: 32),),
          Text(getDescription(prod))
        ]
    ),
      ),
    );
  }
}
