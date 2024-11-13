// widgets/bottom_navigation_bar.dart
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline), label: 'Shorts'),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          label: 'Upload',),
        BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_books), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'You'),
      ],
    );
  }
}






// import 'package:flutter/material.dart';

// class CustomBottomNavigationBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Shorts'), 
//         BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Upload'),
//         BottomNavigationBarItem(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
//         BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'You'),
//       ],
//       currentIndex: 0,
//       onTap: (index) {
//         // Handle tap here if needed
//       },
//       backgroundColor: Colors.grey[850],
//       unselectedItemColor: Colors.grey,
//       selectedItemColor: Colors.white,
//     );
//   }
// }
