import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/contants/image_path.dart';
import 'package:flutter_mobile_app/models/product.dart';

class ProductDetailScreen extends StatefulWidget {
  Product product;
  ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Title"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 250,
              child: Image.asset(
                widget.product.imagePath?? ImagePath.CocaImage,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Container(
                padding: EdgeInsets.only(right: 16, left: 16, top: 35, bottom: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(widget.product.title ?? ""),
                        Text(widget.product.description ?? ""),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber,),
                        Text("${widget.product.rateView??10}"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.call, color: Colors.indigo,),
                      SizedBox(height: 10,),
                      Text("Call")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.route, color: Colors.indigo,),
                      SizedBox(height: 10,),
                      Text("Route")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share, color: Colors.indigo,),
                      SizedBox(height: 10,),
                      Text("Share")
                    ],
                  ),
                ],
              )
            ),
            Container(
              padding: EdgeInsets.only(top: 35,right: 16, left: 16),
              child: Text("Coca-Cola, or Coke, is a cola soft drink manufactured by the Coca-Cola Company. In 2013, Coke products were sold in over 200 countries worldwide, with consumers drinking more than 1.8 billion company beverage servings each day"),
            ),
          ],
        ),
      ),
    );
  }
}
