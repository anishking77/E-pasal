import 'package:epasal/provider/producs_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<Products>(context).items;
    return GridView.builder(
        itemCount: loadedProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (ctx, i) {
          return Consumer<Products>(
            builder: (key, builder, _) {
              return ChangeNotifierProvider.value(
                value: loadedProducts[i],
                child: ProductItem(),
              );
            },
          );
        });
  }
}
