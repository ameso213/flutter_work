// practice.dart
import 'package:flutter/material.dart';

class GridViewValley extends StatelessWidget {
  const GridViewValley({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample image data; replace with your actual data
    final List<Map<String, String>> imageUrls = [
      {
        'title': 'Lobster',
        'imagePath': 'assets/images/lobster.jpg',
      },
      {
        'title': 'Sushi',
        'imagePath': 'assets/images/sushi.jpg',
      },
      {
        'title': 'Pizza',
        'imagePath': 'assets/images/pizza.jpg',
      },
      {
        'title': 'Pasta',
        'imagePath': 'assets/images/pasta.jpg',
      },
      {
        'title': 'Burger',
        'imagePath': 'assets/images/burgers.jpg',
      },
      {
        'title': 'Ice Cream',
        'imagePath': 'assets/images/icecream.jpg',
      },
      {
        'title': 'Porridge',
        'imagePath': 'assets/images/porridge.jpg',
      },
      {
        'title': 'Potatoes',
        'imagePath': 'assets/images/potatoes.jpg',
      },
      {
        'title': 'Legumes',
        'imagePath': 'assets/images/legumes.jpg',
      },
      {
        'title': 'Bread&Muffins',
        'imagePath': 'assets/images/bread&muffins.jpg',
      },
      {
        'title': 'Cereials',
        'imagePath': 'assets/images/cerials.jpg',
      },
      {
        'title': 'Fruits',
        'imagePath': 'assets/images/fruits.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("GridViewValley", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Colors.green,
        foregroundColor: const Color.fromARGB(255, 255, 254, 254),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // number of items in each row
            crossAxisSpacing: 10.0, // horizontal spacing between grid items
            mainAxisSpacing: 10.0, // vertical spacing between items
            mainAxisExtent: 300.0, // height of each item
            childAspectRatio: 0.8, // depending on the design need
          ),
          itemCount: imageUrls.length, // Use lowercase 'length'
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                imageUrls[index]['imagePath']!, // Access the imagePath from the map
                fit: BoxFit.cover,
              ),
            );
          }, // Returns the styled item for the grid view
        ),
      ),
    );
  }
}
