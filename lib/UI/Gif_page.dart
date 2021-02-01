import 'package:conversor_de_gif/UI/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Gif_Page extends StatelessWidget {
  final Map _gifdata;

  Gif_Page(this._gifdata);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          title: Text(
            _gifdata["title"],
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.end,
          ),
          actions: <Widget>[
            IconButton(icon:
            Icon(Icons.share),
                onPressed: () {
                  Share.share(_gifdata["images"]["fixed_height"]["url"]);
                }
            ),
          ],
        ),
        body: Center(
          child: Image.network(_gifdata["images"]["fixed_height"]["url"]),
        ));
  }
}
