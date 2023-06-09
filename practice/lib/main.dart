import 'package:flutter/material.dart';
import 'Pages/homePage.dart';

void main() {
  runApp(YejokaRestaurantApp());
}

class YejokaRestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yejoka Restaurant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
