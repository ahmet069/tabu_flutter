import 'package:flutter/material.dart';
import 'package:tabu/src/view/game_view/game_view.dart';
import 'package:tabu/src/view/home_view/home_view.dart';
import 'package:tabu/src/view/pause_view/pause_view.dart';
import 'package:tabu/src/view/result_view/result_view.dart';

void main() {
  runApp(const MyApp());
}

// single child components
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',
      initialRoute: '/result_view',
      color: Colors.white,
      routes: {
        '/': (context) => const home_view(),
        '/game_view': (context) => game_view(),
        '/pause_view': (context) => pause_view(),
        '/result_view': (context) => result_view(),
      },
    );
  }
}

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context, '/second');
//           },
//           child: const Text('Launch screen'),
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigate back to first screen when tapped.
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
