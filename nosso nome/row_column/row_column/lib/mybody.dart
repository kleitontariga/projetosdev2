import 'package:flutter/material.dart';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FlutterLogo(size: 100),
              FlutterLogo(size: 100),
              FlutterLogo(size: 100),
              FlutterLogo(size: 100),
              FlutterLogo(size: 100),
              FlutterLogo(size: 100)
            ],
          )
        ),
        Padding(
          padding: const EdgeInsets.only(right: 150),
          child:FlutterLogo(size: 100)
        ),
        Container(
          alignment: Alignment.center,
          child: FlutterLogo(size: 100)
        ),
        Center(child: FlutterLogo(size: 100)),
        Container(
          alignment: Alignment.centerLeft,
          child: FlutterLogo(size: 100)
        ),
      ]
    );
  }
}