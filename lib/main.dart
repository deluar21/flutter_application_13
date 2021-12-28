import 'package:flutter/material.dart';

import 'Home.dart/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter API",
    theme: ThemeData(
      primarySwatch:Colors.amber,
    ),
    home: Homepage(),
  ));
  
}

