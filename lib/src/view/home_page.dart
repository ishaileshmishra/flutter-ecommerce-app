import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_ecomm/src/model/Product.dart';
import 'package:jin_ecomm/src/utils/edit_text_search.dart';
import 'package:jin_ecomm/src/utils/resource.dart';
import 'package:jin_ecomm/src/utils/text_util.dart';
import 'package:jin_ecomm/src/view/login_screen.dart';
import 'package:jin_ecomm/src/view/product_detail.dart';
import 'package:jin_ecomm/src/view/product_list.dart';

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
      height: 210,
      width: double.infinity,
      child: buildProductListView(),
    );
  }

  Row buildCategoryRow(String section) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          section,
          style: mediumText,
        ),
        SizedBox(height: 10),
        IconButton(
          icon: Icon(Icons.arrow_forward),
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
      ],
    );
  }

  Row buildActionbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Interiors.',
          //londrinaShadow
          //pacifico
          style: GoogleFonts.pacifico(
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
        SizedBox(height: 10),
        IconButton(
          icon: Icon(Icons.filter_list),
          onPressed: () => {},
          tooltip: "Filter",
          visualDensity: VisualDensity.adaptivePlatformDensity,
          iconSize: 30,
          padding: EdgeInsets.all(8),
          color: Colors.black,
        ),
      ],
    );
  }

  ListView buildProductListView() {
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
            child: new Card(
              elevation: 0,
              margin: EdgeInsets.all(8),
              child: Container(
                width: 180,
                child: Column(
                  children: [
                    Image.asset(
                      productList[index].image,
                      height: 160,
                      width: 250,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 5),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(productList[index].title, style: smallText),
                            CircleAvatar(
                              backgroundColor: productList[index].color,
                              radius: 10,
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          );
        });
  }

  GridView buildProductGridView(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var padding = MediaQuery.of(context).removePadding(removeTop: true);
    //productList
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
          child: new Card(
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
              child: new Image.asset(productList[index]
                  .image), //just for testing, will fill with image later
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            buildActionbar(),
            SizedBox(height: 20),
            buildSearchRow(),
            SizedBox(height: 30),
            buildCategoryRow("Categories"),
            buildCategoryListView(),
            buildCategoryRow("Other Products"),
            Expanded(
              child: buildProductGridView(context), //getCardList(productList),
            ),
          ],
        ),
      ),
    );
  }
}
