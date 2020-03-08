import 'package:epasal/provider/producs_provider.dart';
import 'package:epasal/screens/edit_product_screen.dart';
import 'package:epasal/widgets/app_drawer.dart';
import 'package:epasal/widgets/user_product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProductScreen extends StatelessWidget {
  static const routeID = '/user_product_screen';

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Product'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (ctx, index) => UserProductItem(
            productsData.items[index].title,
            productsData.items[index].imageUrl,
          ),
          itemCount: productsData.items.length,
        ),
      ),
    );
  }
}
