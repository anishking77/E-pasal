import 'package:epasal/screens/edit_product_screen.dart';
import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  UserProductItem(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.pushNamed(context, EditProductScreen.routeId);
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
