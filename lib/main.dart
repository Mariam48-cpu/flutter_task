import 'package:flutter/material.dart';
import 'screens/profile_card.dart';
import 'screens/bussnies_card.dart';
import 'screens/whatsapp.dart';
import 'screens/resturant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: FirstTask(), 
      //  home: SecondTask(),
       home: ThirdTask(), 
      //  home:  Task4(), 
    );
  }
}
