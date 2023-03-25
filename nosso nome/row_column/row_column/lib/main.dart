import 'package:flutter/material.dart';
import 'package:row_column/myhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData (primarySwatch: Colors.lightBlue ),
      title: "Row & Column",
      home: MyHome()
    );
  }
}
