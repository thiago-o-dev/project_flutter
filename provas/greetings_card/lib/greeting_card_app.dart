import 'package:flutter/material.dart';
import 'package:greetings_card/greeting_card_screen.dart';

class GreetingCardApp extends StatelessWidget {
  const GreetingCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cartão Personalizado",
      home: GreetingCardScreen(),
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          labelStyle: TextStyle(color: Colors.black),
          floatingLabelStyle: TextStyle(color: Colors.black),
        ),
        colorScheme: .light(outline: Colors.black, onSurface: Colors.black),
      ),
    );
  }
}
