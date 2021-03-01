import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Dicee")),
        backgroundColor: Colors.black,
        body: Center(
          child: DicePage(),
        ),
      )
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numeroDadoIzquiero = 1;
  int numeroDadoDerecho = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                var randomNumber = getRandomNumber();
                numeroDadoIzquiero = randomNumber;
                print("Se presionó el botón izquierdo: $randomNumber");
              });
            },
            child: Image.asset("Images/dice$numeroDadoIzquiero.png"),
          )
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                var randomNumber = getRandomNumber();
                numeroDadoDerecho = randomNumber;
                print("Se presionó el botón derecho: $randomNumber");
              });
            },
            child: Image.asset("Images/dice$numeroDadoDerecho.png"),
          )
        )
      ],
    );
  }
}

int getRandomNumber() {
  Random random = Random();
  var randomNumber = random.nextInt(6) + 1;

  return randomNumber;
}