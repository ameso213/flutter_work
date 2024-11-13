import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
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
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Soft Foods'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(
                items[index]['imagePath']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                items[index]['title']!,
                style: TextStyle(color: Colors.green), // Set text color to green
              ),
              onTap: () {
                // Handle item tap here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tapped on ${items[index]['title']}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
