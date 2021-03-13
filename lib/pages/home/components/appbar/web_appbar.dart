import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Flutter'),
          SizedBox(width: 32),
          Expanded(child: Container()),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          SizedBox(
            width: 32,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1)),
              child: Text(
                'Fazer Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(width: 8),
          OutlinedButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 1)),
              child: Text(
                'Cadastre-se',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
