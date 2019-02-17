import 'package:flutter/material.dart';

import '../../widgets/SearchInput.dart';
import './widgets/GridList.dart';
import '../MenuAdd/Menu.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Reciapps"),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.add),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()),
                  ),
            )
          ],
        ),
        body: new Container(
            child: new Column(
          children: <Widget>[
            new SearchInput(
              textController: _textController,
              handleSubmitted: _handleSubmitted,
            ),
            new GridList(),
          ],
        )));
  }

  void _handleSubmitted(String text) {}
}
