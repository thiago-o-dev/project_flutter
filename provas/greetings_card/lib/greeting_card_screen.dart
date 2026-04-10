import 'package:flutter/material.dart';
import 'package:greetings_card/greeting_card_form.dart';

class GreetingCardScreen extends StatelessWidget {
  const GreetingCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cartão Personalizado",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: GreetingCardForm(),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
