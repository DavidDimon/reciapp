import 'package:flutter/material.dart';

const List<String> items = ['eggs', 'chicken', 'beans', 'rice'];

class GridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => new Flexible(
        child: new GridView.count(
          crossAxisCount: 4,
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: items
              .map((item) => GridTile(
                    child: new Card(
                        color: Colors.blue.shade200,
                        child: new Container(
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(bottom: 10),
                          child: new Text(item),
                        )),
                  ))
              .toList(),
        ),
      );
}
