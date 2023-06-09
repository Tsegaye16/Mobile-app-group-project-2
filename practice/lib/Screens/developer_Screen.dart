import 'package:flutter/material.dart';

class DeveloperPage extends StatelessWidget {
  final List<String> developerNames = [
    'Tsegaye Abewa',
    'Genet Andualem',
    'Kefle Aseres',
    'Yeshineh Abebaw',
    'Mezmur Niguse',
    'Jalene Muleta',
  ];

  final List<String> imageUrls = [
    'assets/profile.jpg',
    'assets/genet_andualem.jpg',
    'assets/kefle.jpg',
    'assets/yeshineh_abebaw.jpg',
    'assets/mezmur_niguse.jpg',
    'assets/jalene_muleta.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developers'),
      ),
      body: ListView.builder(
        itemCount: developerNames.length,
        itemBuilder: (context, index) {
          final developerName = developerNames[index];
          final imageUrl = imageUrls[index];

          return Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                  radius: 80,
                ),
                SizedBox(height: 20),
                Text(
                  developerName,
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
