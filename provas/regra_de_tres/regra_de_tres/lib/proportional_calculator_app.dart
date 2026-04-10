import 'package:regra_de_tres/proportional_calculator_screen.dart';
import 'package:flutter/material.dart';

class ProportionalCalculatorApp extends StatelessWidget {
  const ProportionalCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora Propocional",
      home: ProportionalCalculatorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}