import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/view/products/models/Product.dart';

class Res{

  static final String lamp = "assets/images/lamp.png";
  static final String chair = "assets/images/chair.png";
  static final String sofa = "assets/images/sofa.png";
  static final String table = "assets/images/table.png";
  static final String table1 = "assets/images/table_1.png";


  static List<Product> fetchProducts() {
    List<Product> productList = [];
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

}