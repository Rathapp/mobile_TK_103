
import 'package:flutter/material.dart';

import '../models/product_model.dart';
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({required this.product,super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Detail"),centerTitle: true,),
      body: Center(child: Column(children: [
        Image.network(product.image)
      ],),),
    );
  }
}
