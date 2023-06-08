import 'package:flutter/material.dart';

class PricePage extends StatelessWidget {
  final String foodName;

  PricePage(this.foodName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ዋጋ'),
      ),
      body: Center(
        child: Text(
          'የ $foodName', // Replace with actual price
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
