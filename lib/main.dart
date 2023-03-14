import 'package:flutter/material.dart';
import 'package:pokemon/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokemón App',
      home: const HomeScreen(),
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.indigo)
      ),
    );
  }
}