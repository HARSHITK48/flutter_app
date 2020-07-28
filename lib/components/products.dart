import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer Male",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer Female",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 180,
      "price": 90,
    },
    {
      "name": "Dress 1",
      "picture": "images/products/dress1.jpeg",
      "old_price": 280,
      "price": 190,
    },
    {
      "name": "Dress 2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 380,
      "price": 290,
    },
    {
      "name": "Hills 1",
      "picture": "images/products/hills1.jpeg",
      "old_price": 1800,
      "price": 970,
    },
    {
      "name": "Pants 1",
      "picture": "images/products/pants1.jpg",
      "old_price": 480,
      "price": 190,
    },
    {
      "name": "Pants 2",
      "picture": "images/products/pants2.jpeg",
      "old_price": 180,
      "price": 90,
    },
    {
      "name": "Shoe 1",
      "picture": "images/products/shoe1.jpg",
      "old_price": 180,
      "price": 90,
    },
    {
      "name": "Skirt 1",
      "picture": "images/products/skt1.jpeg",
      "old_price": 180,
      "price": 90,
    },
    {
      "name": "Skirt 2",
      "picture": "images/products/skt2.jpeg",
      "old_price": 180,
      "price": 90,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SingleProd(
          product_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_new_price: product_list[index]['price'],
        );
      },
    );
  }
}

class SingleProd extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_new_price;

  SingleProd({
    this.product_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_new_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              child: Image.asset(prod_picture, fit: BoxFit.cover),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    product_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\$ $prod_new_price",
                    style: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    "\$ $prod_old_price",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
