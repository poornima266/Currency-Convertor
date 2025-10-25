import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  State<CurrencyConvertorMaterialPage> createState() =>
      _CurrencyConvertorMaterialPageState();
}

class _CurrencyConvertorMaterialPageState
    extends State<CurrencyConvertorMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(40),
      ),
      borderSide: BorderSide(
          color: Colors.brown,
          width: 1.5,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignCenter),
    );
    return Scaffold(
      appBar: AppBar(title: Text("Currency Convertor")),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          // column can hold a list of widgets, and only occupies as much space on the scaffold as the widget
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              child: Text(
                "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                onSubmitted: (value) {
                  print(value);
                },
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.monetization_on_rounded),
                    hintText: "Please enter amount in USD:",
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 13),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: border,
                    focusedBorder: border),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                    minimumSize:
                        WidgetStatePropertyAll(Size(double.infinity, 52)),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                    backgroundColor: WidgetStatePropertyAll(Colors.brown)),
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 85.68;
                  });
                  ;
                },
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// CONSTANTS DO NOT GET REBUILT, HENCE IMPROVING THE EFFICIENCY OF THE APP
