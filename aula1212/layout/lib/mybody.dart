import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
       children: [
        Container(
          width: double.infinity,
          child: FlutterLogo(size: 100)
          ),
        Container(alignment: Alignment.centerLeft,
          child: FlutterLogo(size: 100)),
        Container(alignment: Alignment.centerRight,
          child: FlutterLogo(size: 100)),
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: FlutterLogo(size: 100),
        ),
        FlutterLogo(size: 100),
        FlutterLogo(size: 100),
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            "isso não é um texto",
          style: TextStyle(fontSize: 50),),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FlutterLogo(size: 50),
              FlutterLogo(size: 50),
              FlutterLogo(size: 50),
              FlutterLogo(size: 50),
              FlutterLogo(size: 50),
              FlutterLogo(size: 50)
            ],
          ),

          ),

          Row(
            children: [
            FlutterLogo(size: 100),
            FlutterLogo(size: 100),
            FlutterLogo(size: 100),
            FlutterLogo(size: 100),
            FlutterLogo(size: 100)
            ],
        ),
       ],
      ),
    );
  }
}