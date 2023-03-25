import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRandom extends StatefulWidget {
  const MyRandom({super.key});

  @override
  State<MyRandom> createState() => _MyRandomState();
}

class _MyRandomState extends State<MyRandom> {
  List<String> frases = ["um", "dois", "três", "quatro", "cinco"];
  String _getFrases() {
    var index = Random().nextInt(frases.length);
    return frases[index];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 72, 1, 83),
          Color.fromARGB(145, 210, 37, 241),
          Color.fromARGB(255, 32, 32, 32)
        ], begin: Alignment.topRight, end: Alignment.bottomLeft),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.width * 0.2,
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(_getFrases(),
                  style: GoogleFonts.amiko(
                    fontSize: 15
                  ),),
                  action:
                      SnackBarAction(label: "Hmmm, é mesmo?", onPressed: () {}),
                  dismissDirection: DismissDirection.horizontal,
                ));
              },
              child: Text("É bom para a moral...",
              textAlign: Alignment,
              style: GoogleFonts.amiko(
                fontSize: 15)
              
              ),),
        ),
      ),
    ));
  }
}
