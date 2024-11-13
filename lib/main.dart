// main.dart



import 'package:flutter/material.dart';
//import 'package:app/list_view.dart'; 
//import 'package:app/onboarding_screen.dart';  
//import 'package:app/grid_view_valley.dart';  
//import 'package:app/practice.dart';
import 'package:app/login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      //home: const GridViewValley()
      // home: const OnboardingPage(),
      //home: const ListViewScreen()
      //home: const GridViewValley(),
      //home: const ListViewBuilder(),
      
    );
  }
}




// import 'package:flutter/material.dart';
// import 'screens/home_screen.dart'; 
// import 'widgets/app_bar.dart';                
// import 'widgets/bottom_navigation_bar.dart'; 
// import 'widgets/video_card.dart';             

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),

      
//       home: const HomeScreen(), 
//       debugShowCheckedModeBanner: false,
      
      
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar( ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             const SizedBox(height: 20), 
            
//             VideoCard(title: 'My Video'),
//             VideoCard(title: 'Another Video'),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(), 
//     );
//   }
// }

