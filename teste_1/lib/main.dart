import 'package:flutter/material.dart';

void main() => runApp(const MyTest());

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Teste 1",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen
      ),
      home: const MyBody(),
    );
  }
}


class MyBody extends StatelessWidget {
  const MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rapadura"),
      ),
      body: Center(
        child: Image(image: AssetImage("rapadura.png")),
      ),
    );
  }
}