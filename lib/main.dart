import 'package:epasal/provider/cart_provider.dart';
import 'package:epasal/provider/order_provider.dart';
import 'package:epasal/provider/producs_provider.dart';
import 'package:epasal/screens/cart_screen.dart';
import 'package:epasal/screens/edit_product_screen.dart';
import 'package:epasal/screens/order_screen.dart';
import 'package:epasal/screens/product_details_screen.dart';
import 'package:epasal/screens/product_overview_screen.dart';
import 'package:epasal/screens/user_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
        title: "E-pasal",
        theme: ThemeData(
            primarySwatch: Colors.green,
            accentColor: Colors.red,
            fontFamily: "MTCORSVA"),
        home: ProductOverviewScreen(),
        routes: {
          ProductOverviewScreen.routeId: (context) => ProductOverviewScreen(),
          ProductDetails.routeId: (context) => ProductDetails(),
          CartScreen.routeId: (context) => CartScreen(),
          OrderScreen.routeId: (context) => OrderScreen(),
          UserProductScreen.routeID: (context) => UserProductScreen(),
          EditProductScreen.routeId: (context) => EditProductScreen(),
        },
      ),
    );
  }
}
