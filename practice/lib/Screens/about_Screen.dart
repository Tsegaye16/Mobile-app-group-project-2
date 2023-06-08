import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Text(
          ' Welcome to Yejoka Restaurant!\n\n\n\nAt Yejoka, we believe that dining is not just about satisfying your hunger, but also about indulging in a memorable culinary experience. Nestled in the heart of [City Name], our restaurant is a haven for food enthusiasts who appreciate exquisite flavors and a warm, inviting ambiance.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
