import 'package:epasal/screens/order_screen.dart';
import 'package:epasal/screens/product_overview_screen.dart';
import 'package:epasal/screens/user_product_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Anish"),
            accountEmail: Text("Anish.king77@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/box.png'),
            ),
          ),
          ListTile(
              title: Text("Shop"),
              leading: Icon(Icons.shopping_cart),
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, ProductOverviewScreen.routeId);
              }),
          Divider(),
          ListTile(
              title: Text("Order"),
              leading: Icon(Icons.payment),
              onTap: () {
                Navigator.pushReplacementNamed(context, OrderScreen.routeId);
              }),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manage Products'),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context, UserProductScreen.routeID);
            },
          )
        ],
      ),
    );
  }
}
