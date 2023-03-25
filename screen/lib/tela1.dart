import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:screen/tela2.dart';

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  bool _check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.youtube_searched_for),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Tela2())),
          ),
          ElevatedButton(
              onPressed: () => print("Apertou bt"), child: Text("Aperte-me")),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => print("Menu"),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(100),
          child: CheckboxListTile(
            value: _check,
            onChanged: (v) {
              setState(() {
              _check = !_check;
              });
              print(_check);
            },
          ),
        ),
      ),
    );
  }
}
