import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          hintStyle: TextStyle(color: Colors.white),
          hintText: 'Pesquise',
          suffixIcon: IconButton(
              color: Colors.white, icon: Icon(Icons.search), onPressed: () {})),
    );
  }
}
