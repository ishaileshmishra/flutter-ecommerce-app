import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jin_ecomm/src/model/Product.dart';
import 'package:jin_ecomm/src/utils/resource.dart';
import 'package:jin_ecomm/src/utils/text_util.dart';
import 'package:jin_ecomm/src/view/product_detail.dart';

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
      productList = _fetchProducts();
    });
  }

  List<Product> _fetchProducts() {
    String description =
        "A product description is the marketing copy that explains what a product is and why it’s worth purchasing. The purpose of a product description is to supply customers with important information about the features and benefits of the product so they’re compelled to buy";
    productList.add(new Product(
        color: Colors.amber,
        count: "3",
        description: description,
        image: Res.sofa,
        info: "",
        price: "5000",
        size: "23/56",
        tag: "",
        title: "Sofa"));
    productList.add(new Product(
        color: Colors.lightBlue,
        count: "1",
        description: description,
        image: Res.table,
        info: "",
        price: "4000",
        size: "43/506",
        tag: "",
        title: "Table"));
    productList.add(new Product(
        color: Colors.amberAccent,
        count: "30",
        description: description,
        image: Res.lamp,
        info: "",
        price: "500",
        size: "23/56",
        tag: "",
        title: "Lamp"));
    productList.add(new Product(
        color: Colors.pink,
        count: "5",
        description: description,
        image: Res.chair,
        info: "",
        price: "500",
        size: "23/56",
        tag: "",
        title: "Chair"));
    productList.add(new Product(
        color: Colors.teal,
        count: "5",
        description: description,
        image: Res.table1,
        info: "",
        price: "500",
        size: "23/56",
        tag: "",
        title: "Table Of Thrown"));
    return productList;
  }

  ListView buildProductListView() {
    return ListView.builder(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            buildActionbar(),
            SizedBox(height: 20),
            buildSearchRow(),
            SizedBox(height: 30),
            buildCategoryRow("Categories"),
            buildCategoryListview(),
            buildCategoryRow("Other Products"),
            Expanded(
              child: getCardList(productList),
            ),
          ],
        ),
      ),
    );
  }

  Container buildCategoryListview() {
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

  Row buildActionbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'E-comm..',
          //londrinaShadow
          //pacifico
          style: GoogleFonts.pacifico(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.pink
          ),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade400,
        )
      ],
    );
  }
}

class SearchProductWidget extends StatelessWidget {
  const SearchProductWidget({Key key, s}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        onTap: () {
          print('Search tapped');
        },
        keyboardType: TextInputType.text,
        autofocus: false,
        style:
            new TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
        decoration: new InputDecoration(
            contentPadding:
                new EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
            labelText: "Search products",
            fillColor: Colors.grey.shade200,
            suffixIcon: Icon(Icons.search),
            border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(8.0), gapPadding: 12),
            enabledBorder: InputBorder.none,
            filled: true),
        validator: (val) {
          if (val.length == 0) {
            return "Search field cannot be empty";
          } else {
            return null;
          }
        },
      ),
    );
  }
}
