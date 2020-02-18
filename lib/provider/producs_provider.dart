import 'package:epasal/provider/product.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
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

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return items.firstWhere((prod) {
      return prod.id == id;
    });
  }

  void addProducts() {
    _items.add(Product(
        id: "second",
        title: "Shoes",
        price: 3000,
        description: "Comfortable shoes for anywhere you choose to go",
        imageUrl:
            "https://assets.adidas.com/images/w_600,f_auto,q_auto:sensitive,fl_lossy/e06ae7c7b4d14a16acb3a999005a8b6a_9366/Lite_Racer_RBN_Shoes_White_F36653_01_standard.jpg",
        isFavourite: false));
    notifyListeners();
  }
}
