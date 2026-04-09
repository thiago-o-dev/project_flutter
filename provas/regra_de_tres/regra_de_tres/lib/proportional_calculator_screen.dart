import 'package:regra_de_tres/proportional_calculator.dart';
import 'package:flutter/material.dart';

class ProportionalCalculatorScreen extends StatelessWidget {
  const ProportionalCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Proportional Calculator - Rule of three"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: Center(child: ProportionalCalculator(),),
    );
  }
}