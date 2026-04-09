import 'package:flutter/material.dart';

enum Operation { ruleOfThree }

class ProportionalCalculator extends StatefulWidget {
  const ProportionalCalculator({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProportionalCalculatorState();
  }
}

class _ProportionalCalculatorState extends State<ProportionalCalculator> {
  String _result = "Result";
  final _valueAController = TextEditingController();
  final _valueBController = TextEditingController();
  final _valueCController = TextEditingController();
  final _valueXController = TextEditingController();

  void _performOperation(Operation operation) {
    double valueA = double.tryParse(_valueAController.text) ?? 0.0;
    double valueB = double.tryParse(_valueBController.text) ?? 0.0;
    double valueC = double.tryParse(_valueCController.text) ?? 0.0;

    setState(() {
      switch (operation) {
        case Operation.ruleOfThree:
          if (valueA != 0) {
            _result = "X = ${valueB * valueC / valueA}";
          } else {
            _result = "Divisão por 0 não é permitida.";
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InputCalcValue(controller: _valueAController, writable: true, hint: "Value"),
                  SizedBox(height: 48,),
                  InputCalcValue(controller: _valueCController, writable: true, hint: "Value"),
                ],
              ),
              SizedBox(width: 32),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 48, child: Text("está para")),
                  SizedBox(height: 48, child: Text("assim como", style: TextStyle(fontWeight: FontWeight.bold))),
                  SizedBox(height: 48, child: Text("está para"))
                ],
              ),
              SizedBox(width: 32),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InputCalcValue(controller: _valueBController, writable: true, hint: "Value"),
                  SizedBox(height: 48,), 
                  InputCalcValue(controller: _valueXController, writable: false, hint: "X",)
                ]
              )
            ],
          ),
        ),

        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                _performOperation(Operation.ruleOfThree);
              },
              child: Text(
                "Calcular X",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          _result,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}

class InputCalcValue extends StatelessWidget {
  final TextEditingController controller;
  final bool writable;
  final String hint;

  const InputCalcValue({super.key, required this.controller, required this.writable, required this.hint});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: TextField(
        // backgroundColor: writable ? Colors.grey : Colors.white,
        controller: controller,
        readOnly: !writable,
        canRequestFocus: writable,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: hint,
        ),
      ),
    );
  }
}
