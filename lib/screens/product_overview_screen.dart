import 'package:epasal/provider/producs_provider.dart';
import 'package:epasal/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductOverviewScreen extends StatelessWidget {
  static const String routeId = "product_overview_screen";

  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<Products>(context).items;
    return Scaffold(
      appBar: AppBar(
        title: Text("Epasal"),
      ),
      body: ProductGrid(),
    );
  }
}
