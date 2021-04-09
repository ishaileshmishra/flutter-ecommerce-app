import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/view/products/models/Product.dart';
import 'package:flutter_ecommerce_app/src/utils/StaticRes.dart';
import 'package:flutter_ecommerce_app/src/view/details/ProductDetail.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> productList = Res.fetchProducts();

    Card buildCardGrid(int index) {
      return Card(
        elevation: 0,
        child: new GridTile(
          footer: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(productList[index].title),
                  CircleAvatar(
                    backgroundColor: productList[index].color,
                    radius: 10,
                  )
                ],
              )),
          child:  Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset(productList[index]
                .image),
          ), //just for testing, will fill with image later
        ),
      );
    }

    GridView buildProductGridView(BuildContext context) {
      var orientation = MediaQuery.of(context).orientation;
      return GridView.builder(
        itemCount: productList.length,
        padding: EdgeInsets.only(top: 0),
        reverse: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetail(
                        product: productList[index],
                      ))),
            },
            child:  buildCardGrid(index),
          );
        },
      );
    }


    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Products"),
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
      ),
      body: Container(
        child: buildProductGridView(context)
      ),
    );
  }
}
