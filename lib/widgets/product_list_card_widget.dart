import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/models/product.dart';
import 'package:flutter_mobile_app/screens/product_detail_screen.dart';

class ProductListCardWidget extends StatefulWidget {
  Product? product;
  final VoidCallback onTab;
  ProductListCardWidget(
      {super.key, required this.product, required this.onTab});

  @override
  State<ProductListCardWidget> createState() => _ProductListCardWidgetState();
}

class _ProductListCardWidgetState extends State<ProductListCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black12),
      ),
      child: ListTile(
        leading: Image.asset(
          widget.product!.imagePath!,
          width: 50,
          height: 50,
        ),
        title: Text("${widget.product!.title ?? "No Title"}"),
        subtitle: Text("${widget.product!.description}"),
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: widget.onTab ,
              child: Icon(Icons.edit),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(product: widget.product!,)));
              },
              child: Icon(Icons.remove_red_eye),
            )
          ],
        ),
      ),
    );
  }
}
