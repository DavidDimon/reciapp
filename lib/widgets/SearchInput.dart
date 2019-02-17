import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  SearchInput({this.textController, this.handleSubmitted});
  final TextEditingController textController;
  final Function handleSubmitted;

  @override
  Widget build(BuildContext context) => new Flexible(
        child: new Container(
          margin: const EdgeInsets.all(10),
          decoration: new BoxDecoration(
            border: new Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  controller: textController,
                  onSubmitted: handleSubmitted,
                  decoration: new InputDecoration(
                      hintText: "What's in your fridge?",
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20)),
                ),
              ),
              new Container(
                  child: new IconButton(
                      icon: new Icon(Icons.search),
                      onPressed: handleSubmitted(textController.text))),
            ],
          ),
        ),
      );
}
