import 'package:everning_thu/pages/product_detail_page.dart';
import 'package:flutter/material.dart';

import '../data/product_data.dart';
import '../models/product_model.dart';
class GridviewPage extends StatelessWidget {
  const GridviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
                  crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            childAspectRatio: 0.65
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(product: Product.fromJson(product),)));
              },
              child: Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsetsGeometry.all(10),
                child: Column(
                  children: [
                    Image.network(product["image"],width: double.infinity,
                    height: 150,fit: BoxFit.cover,),
                    SizedBox(height: 5,),
                    Text(product["title"],maxLines: 1,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 18,fontWeight: FontWeight(600)),),
                    Text(product["rating"]["rate"].toString()),
                    Spacer(),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [Text(product["price"].toString(),style:TextStyle(fontSize: 18,fontWeight: FontWeight(600),color: Colors.blueAccent),),ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.green,
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                         padding: EdgeInsetsGeometry.all(10),
                       ),
                       onPressed: (){}, child: Icon(Icons.add))],)
                  ],
                ),
              ),
            );
          }
            ),
      ),
    );
  }
}
