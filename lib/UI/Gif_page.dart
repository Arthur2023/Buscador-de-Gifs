import 'package:conversor_de_gif/UI/Home_Page.dart';
import 'package:flutter/material.dart';

class Gif_Page extends StatelessWidget {
  final Map _gifdata;

  Gif_Page(this._gifdata);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.chevron_left),
                alignment: Alignment.bottomLeft,
                color: Colors.white,
                onPressed: null),
          ],
          backgroundColor: Colors.black,
          title: Text(
            _gifdata["title"],
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.end,
          ),
        ),
        body: Center(
          child: Image.network(_gifdata["images"]["fixed_height"]["url"]),
        ));
  }
}
