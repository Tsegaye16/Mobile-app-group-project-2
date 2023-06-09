import 'package:flutter/material.dart';

class IngredientPage extends StatelessWidget {
  final String foodName;

  
  IngredientPage(this.foodName);

  List<String> getIngredients(String foodName) {
    switch (foodName) {
      case 'ክትፎ':
        return [
          'የተፈጨ ስጋ',
          'ሚጥሚጣ',
          'እንጀራ',
          'ቃሪያ',
        ];
      case 'ጥብስ':
        return [
          'የተጠበሰ ስጋ',
          'ቃሪያ',
          'እንጀራ',
          'ሚጥሚጣ',
        ];
      case 'ሩዝ':
        return [
          'ሩዝ',
          'እንጀራ/ዳቦ',
          'ስልስ',
          'ካሮት',
          'ጎመን',
        ];
      case 'በየአይነት':
        return [
          'ጎመን',
          'ድንች',
          'ቀይስር',
          'ሩዝ',
          'ምስር',
          'እንጀራ',
        ];
      case 'አሳ':
        return [
          'የተጠበሰ አሳ',
          'ሚጥሚጣ',
          'እንጀራ',
        ];
      case 'ሩዝ በስጋ':
        return [
          'ሩዝ',
          'ስጋ',
          'እንጀራ/ዳቦ',
          'ስልስ',
        ];
      case 'ቁርጥ':
        return [
          'ጥሬ ስጋ',
          'ሚጥሚጣ',
          'እንጀራ',
        ];
      case 'ጎረድ ጎረድ':
        return [
          'በከፊሉ የተጠበሰ ስጋ',
          'ሚጥሚጣ',
          'እንጀራ',
        ];
      case 'እንቁላል በስጋ':
        return [
          'እንቁላል',
          'ስጋ',
          'እንጀራ',
          'ሚጥሚጣ',
          'ቃሪያ',
        ];
      case 'ዶሮ ወጥ':
        return [
          'እንቁላል',
          'የዶሮ ስጋ',
          'እንጀራ',
        ];
      case 'ፒዛ':
        return [
          'ዳቦ',
          'ቃሪያ',
          'ሰላጣ',
          'ክሪም',
        ];

      case 'ዱለት':
        return [
          'ጨጓራ',
          'ስጋ',
          'እንጀራ',
          'ሚጥሚጣ',
          'ቃሪያ',
        ];

      case 'የጾም ፍርፍር':
        return [
          'ስልስ',
          'እንጀራ',
          'ሚጥሚጣ',
          'ቃሪያ',
        ];
      case 'ተጋቢኖ':
        return [
          'ሽሮ',
          'እንጀራ',
          'ቃሪያ',
        ];
      case 'ሽሮ':
        return [
          'ሽሮ',
          'እንጀራ',
          'ቃሪያ',
        ];
      case 'ቲማቲም ለብለብ':
        return [
          'ቲማቲም',
          'እንጀራ',
          'ቃሪያ',
        ];

      case 'የጾም ፓስታ':
        return [
          'ፓስታ',
          'ስልስ/አትክልት',
          'እንጀራ/ዳቦ',
        ];
      case 'ምስር':
        return [
          'ምስር ወጥ',
          'እንጀራ',
        ];

      case 'ጎመን':
        return [
          'ጎመን',
          'እንጀራ',
          'ሚጥሚጣ',
          'ቃሪያ',
        ];
      default:
        return ['already obvious'];
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> ingredients = getIngredients(foodName);

    return Scaffold(
      appBar: AppBar(
        title: Text(foodName),
      ),
      body: ListView.builder(
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(ingredients[index]),
          );
        },
      ),
    );
  }
}
