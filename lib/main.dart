import 'package:conversor_de_gif/UI/Gif_page.dart';
import 'package:flutter/material.dart';
import 'package:conversor_de_gif/UI/Home_Page.dart';
import 'package:conversor_de_gif/UI/Gif_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conversor de Gifs',
      home: HomePage(),
      theme: ThemeData(
        hintColor: Colors.white,
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
