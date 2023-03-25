import 'package:flutter/material.dart';

void main() => runApp(const MyTest());
  
  class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
      primarySwatch: Colors.green
      ),
     debugShowCheckedModeBanner: false,
      home: MyHome()
    ); //MaterialApp
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste"),
      ),
     body:Center(
child: Image(
  image:NetworkImage("https://i.redd.it/ozx25tyk0g111.jpg"),
    
    ),
     ),
    );
  }
}