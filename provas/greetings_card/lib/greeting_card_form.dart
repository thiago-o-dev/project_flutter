import 'package:flutter/material.dart';
import 'package:greetings_card/greeting_card_display.dart';
import 'package:greetings_card/labeled_text_field.dart';

class GreetingCardForm extends StatefulWidget {
  const GreetingCardForm({super.key});

  @override
  State<GreetingCardForm> createState() => _GreetingCardFormState();
}

class _GreetingCardFormState extends State<GreetingCardForm> {
  final _recipientController = TextEditingController();
  final _messageController = TextEditingController();
  final _senderController = TextEditingController();

  bool _showCard = false;
  String _recipient = '';
  String _message = '';
  String _sender = '';

  void _createCard() {
    String recipient = _recipientController.text.trim();
    String message = _messageController.text.trim();
    String sender = _senderController.text.trim();

    if (recipient.isEmpty || message.isEmpty || sender.isEmpty) {
      return;
    }

    setState(() {
      _recipient = recipient;
      _message = message;
      _sender = sender;
      _showCard = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LabeledTextField(
          label: "Destinatário",
          controller: _recipientController,
        ),
        SizedBox(height: 12),
        LabeledTextField(label: "Mensagem", controller: _messageController),
        SizedBox(height: 12),
        LabeledTextField(label: "Remetente", controller: _senderController),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: _createCard,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            padding: EdgeInsets.all(16),
          ),
          child: Text("Criar Cartão", style: TextStyle(fontSize: 16)),
        ),
        SizedBox(height: 24),

        if (_showCard)
          GreetingCardDisplay(
            recipient: _recipient,
            message: _message,
            sender: _sender,
          ),
      ],
    );
  }
}
