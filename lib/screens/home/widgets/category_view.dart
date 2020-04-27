import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<String> categories = ["Math", "English", "Programming"];
  int _categorySelected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.navigate_before,
            size: 40,
            color: Colors.white,
          ),
          color: Colors.white,
          onPressed: _previous_categorySelected,
        ),
        Text(
          categories[_categorySelected % categories.length],
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300),
        ),
        IconButton(
          icon: Icon(
            Icons.navigate_next,
            size: 40,
            color: Colors.white,
          ),
          color: Colors.white,
          onPressed: _next_categorySelected,
        )
      ],
    );
  }

  int _getCurrent_categorySelected() {
    return _categorySelected % categories.length;
  }

  int _next_categorySelected() {
    setState(() {
      _categorySelected = _getCurrent_categorySelected() + 1;
    });

    return _categorySelected;
  }

  int _previous_categorySelected() {
    setState(() {
      _categorySelected = _getCurrent_categorySelected() - 1;
    });

    return _categorySelected;
  }
}
