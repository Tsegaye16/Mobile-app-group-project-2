import 'package:flutter/material.dart';

class FoodDetailsPage extends StatelessWidget {
  final String foodName;
  final String imageUrl;
  final double foodPrice;

  FoodDetailsPage(this.foodName, this.imageUrl, this.foodPrice);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ስለ ምግቡ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ስም፡ $foodName',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Image.asset(
              imageUrl,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              'ዋጋ: $foodPrice ብር',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

