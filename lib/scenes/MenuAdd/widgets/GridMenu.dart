import 'package:flutter/material.dart';

const List<String> menuItems = ['Recipe', 'Ingredient', 'Scan a ingredient'];

class GridMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Container(
        child: new GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: menuItems
              .map((item) => GridTile(
                    child: new Card(
                        color: Colors.blue.shade200,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Container(),
                            new Container(
                              alignment: Alignment.center,
                              child: new Icon(
                                _getIcon(item),
                                size: 60,
                              ),
                            ),
                            new Container(
                              alignment: Alignment.bottomCenter,
                              padding: EdgeInsets.only(bottom: 10),
                              child: new Text(item),
                            ),
                          ],
                        )),
                  ))
              .toList(),
        ),
      );

  IconData _getIcon(String iconName) {
    switch (iconName) {
      case 'Recipe':
        return Icons.add_box;
        break;
      case 'Ingredient':
        return Icons.add;
        break;
      default:
        return Icons.add_a_photo;
    }
  }
}
