import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data_lists/fisik_food_list.dart';
import 'Food_Detail_Screen.dart';
import 'ingredient_Screen.dart';

class SlowFoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = SlowFoodData.foodNames.map((foodName) {
      return 'assets/${foodName.trim()}.jpg';
    }).toList();

    // Rest of the code remains the same

    return Scaffold(
      appBar: AppBar(
        title: Text('የፍስክ ምግቦች ዝርዝር'),
      ),
      body: ListView.builder(
        itemCount: SlowFoodData.foodNames.length,
        itemBuilder: (context, index) {
          final foodName = SlowFoodData.foodNames[index];
          final imageUrl = imageUrls[index];
          final foodPrice = SlowFoodData.foodPrices[index];

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListTile(
              title: Text(foodName),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FoodDetailsPage(foodName, imageUrl, foodPrice),
                  ),
                );
              },
              leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            FoodDetailsPage(foodName, imageUrl, foodPrice)),
                  );
                },
                child: Image.asset(
                  imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('ዋጋ'),
                            content:
                                Text('አይጨነቁ የ$foodName ዋጋ $foodPrice ብር ብቻ ነው'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('ዝጋ'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('ዋጋ'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Implement ingredient button logic
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              IngredientPage('$foodName'),
                        ),
                      );
                    },
                    child: Text('የተካተቱ'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
