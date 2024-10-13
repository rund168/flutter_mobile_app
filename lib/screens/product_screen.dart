import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/contants/image_path.dart';
import 'package:flutter_mobile_app/models/product.dart';
import 'package:flutter_mobile_app/screens/product_detail_screen.dart';
import 'package:flutter_mobile_app/widgets/product_list_card_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Product> productList = [];
  @override
  void initState() {
    super.initState();
    Product coca = Product(
      id: 1,
      title: "Coca Cola",
      description: "Coca Cola Description",
      imagePath: ImagePath.CocaImage,
    );
    productList.add(coca);
    Product pepsi = Product(
      id: 2,
      title: "Pepsi",
      description: "Pepsi Description",
      imagePath: ImagePath.PepsiImage,
    );
    productList.add(pepsi);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Product"),
      ),
      body: Container(
          margin: const EdgeInsets.all(5),
          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return ProductListCardWidget(
                product: productList[index],
                onTab: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: productList[index],)));

                },
              );
            },
          )
          // ListView(
          //   children: [
          //     Container(
          //       margin: EdgeInsets.only(top: 5),
          //       decoration: BoxDecoration(
          //         border: Border.all(width: 1, color: Colors.black12),
          //       ),
          //       child: ListTile(
          //         leading: Image.asset(
          //             "assets/Cyber.png",
          //           width: 50,
          //           height: 50,
          //         ),
          //         title: Text("Product Title"),
          //         subtitle: Text("Product descroption"),
          //         trailing: Row(
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           mainAxisSize: MainAxisSize.min,
          //           children: [
          //             Icon(Icons.edit),
          //             SizedBox(width: 10,),
          //             Icon(Icons.remove_red_eye)
          //           ],
          //         ),
          //
          //
          //       ),
          //     )
          //   ],
          // ),
          ),
    );
  }
}
