import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyRandom extends StatefulWidget {
  const MyRandom({super.key});

  @override
  State<MyRandom> createState() => _MyRandomState();
}

class _MyRandomState extends State<MyRandom> {
  List frases = [
    "já perdeu",
    "já era, meu",
    "cabô pra ti",
    "tu e nada é a mesma coisa",
    "realmente, você é diferente, mas nem sempre ser diferente é ser melhor"
  ];

  String mostraMensagem() {
    var numAleatorio = Random().nextInt(frases.length);
    return frases[numAleatorio];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(mostraMensagem()),
                  dismissDirection: DismissDirection.down,
                  action: SnackBarAction(label: "Uga Buga?", onPressed: () {}),
                ));
              },
              icon: Icon(
                Icons.flutter_dash,
                size: 40,
              ))
        ],
      ),
    );
  }
}
