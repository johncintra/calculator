import 'package:calculadora/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(CrochetCalculatorApp());

class CrochetCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Crochê',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

