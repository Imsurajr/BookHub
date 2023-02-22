import 'package:bookhub/models/popular_model.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/selected_book_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       // home: HomeScreen(),
      home: HomeScreen(),
    );
  }
}

//flutter emulators --launch Nexus_6_API_33