import 'package:flutter/material.dart';
import 'Pages/homePage.dart';
import 'data_lists/fast_food_list.dart';
import 'data_lists/fisik_food_list.dart';
import 'widgets/drawer.dart';

void main() {
  runApp(YejokaRestaurantApp());
}

class YejokaRestaurantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yejoka Restaurant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
