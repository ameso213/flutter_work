import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Widget"),
        backgroundColor: const Color.fromARGB(255, 17, 17, 17),
        foregroundColor: Colors.green[100],
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10.5)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 17, 221, 96),
              borderRadius: BorderRadius.all(Radius.circular(10.5)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 12, 209, 78),
              borderRadius: BorderRadius.all(Radius.circular(10.5)),
              image: DecorationImage(
                image: NetworkImage('https://via.placeholder.com/150'), 
                fit: BoxFit.cover, // Adjusts the image to cover the entire container
              ),
            ),
          ),
        ],
      ),
    );
  }
}
