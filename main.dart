import 'package:flutter/material.dart';
import 'package:nimap/features/nimap_home_screen/presentation/screen/home_screen.dart';
import 'package:nimap/record_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NiMap',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NiMapScreen(
        showNavigation: () {
      // Define what happens when navigation is shown
    },
    hideNavigation: () {
    // Define what happens when navigation is hidden
    },
    ),
    );
  }
}

