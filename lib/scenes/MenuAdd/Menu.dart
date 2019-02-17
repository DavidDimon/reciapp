import 'package:flutter/material.dart';

import './widgets/GridMenu.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("What's you want to add?"),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
          leading: new IconButton(
            icon: Icon(Theme.of(context).platform == TargetPlatform.iOS
                ? Icons.arrow_back_ios
                : Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: new Container(
          child: new GridMenu(),
        ));
  }
}
