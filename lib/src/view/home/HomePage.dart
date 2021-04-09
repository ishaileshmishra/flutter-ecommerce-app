import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_ecommerce_app/src/view/products/models/Product.dart';
import 'package:flutter_ecommerce_app/src/utils/TextWidgetSearch.dart';
import 'package:flutter_ecommerce_app/src/utils/StaticRes.dart';
import 'package:flutter_ecommerce_app/src/utils/TextUtility.dart';
import 'package:flutter_ecommerce_app/src/view/login/LoginPage.dart';
import 'package:flutter_ecommerce_app/src/view/details/ProductDetail.dart';
import 'package:flutter_ecommerce_app/src/view/products/ProductList.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> productList = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      productList = Res.fetchProducts();
    });
  }

  Container buildCategoryListView() {
    return Container(
      height: 150,
      width: double.infinity,
      child: renderProductCategories(),
    );
  }

  Widget buildCategoryRow(String section) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            section,
            style: mediumText,
          ),
          SizedBox(height: 10),
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductList())),
              },
              tooltip: "Filter",
              visualDensity: VisualDensity.adaptivePlatformDensity,
              iconSize: 30,
              padding: EdgeInsets.all(8),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Row buildActionbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Furnitures',
          style: GoogleFonts.lato(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.pink),
        ),
        GestureDetector(
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen())),
          },
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.shade400,
          ),
        )
      ],
    );
  }

  Row buildSearchRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SearchProductWidget(),
        SizedBox(width: 10),
        CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: IconButton(
            alignment: Alignment.center,
            icon: Icon(
              Icons.filter_list,
              size: 20,
            ),
            onPressed: () => {print("Filter clicked")},
            tooltip: "Filter",
            visualDensity: VisualDensity.adaptivePlatformDensity,
            iconSize: 30,
            padding: EdgeInsets.all(8),
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  ListView renderProductCategories() {
    return ListView.builder(
        padding: EdgeInsets.only(left: 0),
        itemCount: productList.length,
        scrollDirection: Axis.horizontal,
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
            child: Container(width: 100, child: buildCardGrid(index)),
          );
        });
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
          child: buildCardGrid(index),
        );
      },
    );
  }

  Card buildCardGrid(int index) {
    return Card(
      elevation: 0,
      color: productList[index].color,
      child: new GridTile(
        footer: Padding(
            padding: EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productList[index].title,
                  style: TextStyle(fontSize: 10),
                ),
                CircleAvatar(
                  backgroundColor: productList[index].color,
                  radius: 8,
                )
              ],
            )),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset(
            productList[index].image,
            fit: BoxFit.contain,
          ),
        ), //just for testing, will fill with image later
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            buildActionbar(),
            SizedBox(height: 20),
            buildSearchRow(),
            //SizedBox(height: 30),
            buildCategoryRow("Categories"),
            buildCategoryListView(),
            buildCategoryRow("Other Products"),
            Flexible(
              child: buildProductGridView(context), //getCardList(productList),
            ),
          ],
        ),
      ),
    );
  }
}
