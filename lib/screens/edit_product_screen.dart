import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  static const routeId = '/edit_product_screen';

  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _priceFocusNode = FocusNode();
  final _desFocusNode = FocusNode();
  final _imgUrlFocusNode = FocusNode();
  final _imgUrlController = TextEditingController();

  // to clean off the unwanted widgets
  @override
  void dispose() {
    _priceFocusNode.dispose();
    _desFocusNode.dispose();
    _imgUrlFocusNode.dispose();
    _imgUrlController.dispose();
    super.dispose();
  }

  @override
  void initstate() {
    _imgUrlFocusNode.addListener(_updateImageUrl);
    super.initState();
  }

  //-- to update in the container agter user enter the new image url

  void _updateImageUrl() {
    if (!_imgUrlFocusNode.hasFocus) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit products"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Title'),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_priceFocusNode);
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Price'),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                focusNode: _priceFocusNode,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Description'),
                focusNode: _desFocusNode,
                maxLines: 3,
                keyboardType: TextInputType.multiline,
              ),
              Row(
                children: <Widget>[
                  Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 8, right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: _imgUrlController.text.isEmpty
                          ? Text('Enter a url')
                          : FittedBox(
                              child: Image.network(_imgUrlController.text),
                              fit: BoxFit.cover,
                            )),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Image URL',
                      ),
                      focusNode: _imgUrlFocusNode,
                      controller: _imgUrlController,
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.done,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
