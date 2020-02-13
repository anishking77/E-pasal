import 'package:epasal/model/product.dart';
import 'package:epasal/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
        id: "first",
        title: "Watch",
        price: 2000,
        description: "The best watch you will find anywhere",
        imageUrl:
            "https://www.obaku.com/content/watch/V178GXUURZ_ROLIG_GUNTAN.jpg",
        isFavourite: false),
    Product(
        id: "second",
        title: "Shoes",
        price: 3000,
        description: "Comfortable shoes for anywhere you choose to go",
        imageUrl:
            "https://assets.adidas.com/images/w_600,f_auto,q_auto:sensitive,fl_lossy/e06ae7c7b4d14a16acb3a999005a8b6a_9366/Lite_Racer_RBN_Shoes_White_F36653_01_standard.jpg",
        isFavourite: false),
    Product(
        id: "third",
        title: "Laptop",
        price: 80000,
        description: "The best gaming laptop",
        imageUrl:
            "https://static.techspot.com/images/products/2019/laptops/org/2019-09-20-product-6.jpg",
        isFavourite: false),
    Product(
        id: "four",
        title: "T-shirt",
        price: 1500,
        description: "casual anywhere you go",
        imageUrl:
            "https://d1nxj5numvhshx.cloudfront.net/13561-large_default/selected-homme-shd-pima-white-t-shirt.jpg",
        isFavourite: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Epasal"),
      ),
      body: GridView.builder(
          itemCount: loadedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (ctx, i) {
            return ProductItem(
              loadedProducts[i].title,
              loadedProducts[i].price,
              loadedProducts[i].imageUrl,
            );
          }),
    );
  }
}
