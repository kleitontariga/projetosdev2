import 'package:flutter/material.dart';
import 'package:layout/myhome.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Elementos de layout",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHome(),
    );
  }
}